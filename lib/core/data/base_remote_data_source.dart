import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../models/base_model.dart';

abstract class BaseRemoteDataSource {
  @protected
  Future<Map<String, dynamic>> performGetRequest({
    required String endpoint,
    required String language,
    String? token,
    Map<String, dynamic>? queryParameters,
  });
}

@LazySingleton(as: BaseRemoteDataSource)
class BaseRemoteDataSourceImpl extends BaseRemoteDataSource {
  final Dio dio;

  BaseRemoteDataSourceImpl({required this.dio});

  @override
  Future<Map<String, dynamic>> performGetRequest({
    required String endpoint,
    required String language,
    String? token,
    Map<String, dynamic>? queryParameters,
  }) async {
    final Response<Map<String, dynamic>> response = await dio.get(
      endpoint,
      queryParameters: queryParameters,
      options: Options(
        headers: {
          if (token != null && token.isNotEmpty)
            'Authorization': 'Bearer $token',
          'Accept-Language': language,
        },
      ),
    );
    if (response.statusCode == 200 && response.data != null) {
      final BaseModel baseModel = BaseModel.fromJson(response.data!);
      if (baseModel.status == 200) {
        return response.data!;
      } else {
        throw Exception('Parse Error');
      }
    } else {
      throw Exception('Error');
    }
  }
}
