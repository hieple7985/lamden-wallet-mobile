/// Created by nghinv on Wed Jun 29 2022

import 'package:config_project/config_project.dart';
import 'package:dio/dio.dart';
import 'dio_auth_interceptor.dart';
import 'dio_logging.dart';

class DioClient {
  late Dio _dio;

  DioClient() {
    setupDio();
  }

  void setupDio() {
    BaseOptions options = BaseOptions(
      baseUrl: Environment.instance.baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    _dio = Dio(options);
    _dio.interceptors.addAll([
      DioAuthInterceptor(),
      DioLogging(),
    ]);
  }

  Dio get dio => _dio;
}
