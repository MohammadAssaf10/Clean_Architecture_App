import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../utils/constants.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async => $initGetIt(getIt);

Dio getDio() {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseUrl,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    ),
  );
  if (kDebugMode) {
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
      ),
    );
  }
  return dio;
}

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => getDio();
}
