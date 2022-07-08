import 'package:di/di.dart';
import 'package:flutter_base/core/services/network/network_info.dart';
import 'package:flutter_base/core/services/dio/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'core/app_config/config_injection.dart';

class AppInjection extends DIModuleRegister {
  @override
  Future<void> init() async {
    await ConfigInjection().inject();

    // Dio
    sl.registerLazySingleton<DioClient>(() => DioClient());

    // Network info
    sl.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(InternetConnectionChecker()));

    // External
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);
  }
}
