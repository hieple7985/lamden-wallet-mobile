/// Created by nghinv on Wed Jun 29 2022

import 'package:dio/dio.dart';
import 'dio_client.dart';
import '../stores/secure_storage.dart';

class DioAuthInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? accessToken = await SecureStorage.getToken();

    if (accessToken == null) {
      return super.onRequest(options, handler);
    }

    options.headers['Authorization'] = 'Bearer $accessToken';

    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
      // tokenExpired
      await refreshToken();

      return _retry(err, handler);
    }

    super.onError(err, handler);
  }

  Future<void> refreshToken() async {
    String? refreshToken = await SecureStorage.getRefreshToken();
    if (refreshToken == null) {
      return;
    }

    Response response = await DioClient().dio.post(
      '/auth/refresh',
      data: {
        'refreshToken': refreshToken,
      },
    );

    if (response.statusCode == 200) {
      String accessToken = response.data['accessToken'];
      String refreshToken = response.data['refreshToken'];
      await SecureStorage.setToken(accessToken);
      await SecureStorage.setRefreshToken(refreshToken);
    }
  }

  Future<void> _retry(DioError err, ErrorInterceptorHandler handler) async {}
}
