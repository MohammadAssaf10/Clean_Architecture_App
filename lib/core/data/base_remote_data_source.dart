abstract class BaseRemoteDataSource {
  Future<Map<String, dynamic>> performGetRequest({
    required String endpoint,
    required String language,
    String? token,
    Map<String, dynamic>? queryParameters,
  });
}
