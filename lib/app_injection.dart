import 'package:flutter_base/core/services/dio/dio_client.dart';
import 'package:services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/app_config/config_injection.dart';

class AppInjection extends DIModuleRegister {
  @override
  Future<void> init() async {
    await ConfigInjection().inject();

    // Dio
    sl.registerLazySingleton<DioClient>(() => DioClient());

    // Network info
    sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

    // External
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);
  }
}
