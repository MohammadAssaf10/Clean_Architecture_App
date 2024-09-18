import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../error/exceptions.dart';
import '../models/base_model.dart';
import 'base_remote_data_source.dart';

@LazySingleton(as: BaseRemoteDataSource)
class BaseRemoteDataSourceImpl implements BaseRemoteDataSource {
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
        return response.data!['data'];
      } else {
        throw ServerException(error: baseModel.message);
      }
    } else {
      throw const ServerException(error:"Something went wrong");
    }
  }
}
