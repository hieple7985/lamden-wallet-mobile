import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static FlutterSecureStorage storage = const FlutterSecureStorage();

  static const String tokenKey = 'secure_token';
  static const String refreshTokenKey = 'secure_refresh_token';

  static Future<String?> getToken() async {
    return await storage.read(key: tokenKey);
  }

  static Future<void> setToken(String token) async {
    await storage.write(key: tokenKey, value: token);
  }

  static Future<void> deleteToken() async {
    await storage.delete(key: tokenKey);
  }

  static Future<String?> getRefreshToken() async {
    return await storage.read(key: refreshTokenKey);
  }

  static Future<void> setRefreshToken(String token) async {
    await storage.write(key: refreshTokenKey, value: token);
  }

  static Future<void> deleteRefreshToken() async {
    await storage.delete(key: refreshTokenKey);
  }
}
