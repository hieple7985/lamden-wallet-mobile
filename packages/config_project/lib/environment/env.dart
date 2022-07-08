/// Created by nghinv on Wed Jun 08 2022

part of config_project;

enum Flavor { development, staging, production }

abstract class Env {
  final String baseUrl;

  final String apiKey;

  Env({
    required this.baseUrl,
    required this.apiKey,
  });
}

class Environment extends Env {
  final Flavor flavor;

  static Environment? _instance;

  static Environment get instance {
    assert(_instance != null);
    return _instance!;
  }

  Environment._({
    required super.baseUrl,
    required super.apiKey,
    required this.flavor,
  });

  Environment._development()
      : this._(
          baseUrl: "",
          apiKey: "",
          flavor: Flavor.development,
        );

  Environment._staging()
      : this._(
          baseUrl: "",
          apiKey: "",
          flavor: Flavor.staging,
        );

  Environment._production()
      : this._(
          baseUrl: "https://jsonplaceholder.typicode.com",
          apiKey: "",
          flavor: Flavor.production,
        );

  /// Initial environment with [Flavor]
  ///
  /// Default is [Flavor.production]
  static init({Flavor? flavor}) {
    switch (flavor) {
      case Flavor.development:
        _instance = Environment._development();
        break;
      case Flavor.staging:
        _instance = Environment._staging();
        break;
      case Flavor.production:
      default:
        _instance = Environment._production();
        break;
    }
  }

  /// Return Flavor name
  ///
  /// development | staging | production
  static String flavorName() => _instance?.flavor.name ?? "";

  static bool isProduct() => _instance?.flavor == Flavor.production;

  static bool isStaging() => _instance?.flavor == Flavor.staging;

  static bool isDevelopment() => _instance?.flavor == Flavor.development;
}
