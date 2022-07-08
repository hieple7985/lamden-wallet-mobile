class StatusCode {
  /// [200] Success
  static const int success = 200;

  /// [400] Bad request
  static const int badRequest = 400;

  /// [401] Unauthorized
  static const int unauthorized = 401;

  /// [404] Not found
  static const int notFound = 404;

  /// [500] Internal server error
  static const int internalServerError = 500;

  /// [501] Not implemented
  static const int notImplemented = 501;

  /// [502] Bad gateway
  static const int badGateway = 502;

  /// [503] Service unavailable
  static const int serviceUnavailable = 503;

  /// [504] Gateway timeout
  static const int gatewayTimeout = 504;

  /// [505] HTTP version not supported
  static const int versionNotSupported = 505;

  /// [999] Unknown
  static const int unknown = 999;
}

class StatusMessage {
  static const String success = 'Success';
  static const String badRequest = 'Bad request';
  static const String unauthorized = 'Unauthorized';
  static const String notFound = 'Not found';
  static const String internalServerError = 'Internal server error';
  static const String notImplemented = 'Not implemented';
  static const String badGateway = 'Bad gateway';
  static const String serviceUnavailable = 'Service unavailable';
  static const String gatewayTimeout = 'Gateway timeout';
  static const String versionNotSupported = 'Version not supported';
  static const String unknown = 'Unknown';
}
