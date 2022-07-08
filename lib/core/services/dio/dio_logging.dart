/// Created by nghinv on Wed Jun 29 2022

import 'package:dio/dio.dart';
import 'package:logger_console/logger_console.dart';

class DioLogging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Console.groupCollapsed(
      '${options.method.toUpperCase()} ${options.path}',
      LogConfig(color: 'green', type: LogType.groupCollapsed),
    );
    Console.log('time: ${DateTime.now()}');
    Console.log('data:', options.data);
    Console.groupEnd();
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Console.groupCollapsed(
      'RESPONSE[${response.statusCode}] ${response.requestOptions.method.toUpperCase()} ${response.requestOptions.path}',
      LogConfig(color: 'DodgerBlue', type: LogType.groupCollapsed),
    );
    Console.log('message:', response.statusMessage);
    Console.log('time: ${DateTime.now()}');
    Console.log('data:', response.data);
    Console.groupEnd();
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    Console.groupCollapsed(
      'ERROR[${err.response?.statusCode}] ${err.requestOptions.method.toUpperCase()} ${err.requestOptions.path}',
      LogConfig(color: 'red', type: LogType.groupCollapsed),
    );
    Console.log('message:', err.message);
    Console.groupEnd();
    super.onError(err, handler);
  }
}
