import 'package:dio/dio.dart';

import '../models/base_model.dart';

abstract class BaseRemoteDataSource {
  final Dio dio;

  BaseRemoteDataSource({required this.dio});

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
