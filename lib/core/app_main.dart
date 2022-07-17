import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger_console/logger_console.dart';
import 'package:services/services.dart';

abstract class AppMain {
  AppMain() {
    _init();
  }

  void _init() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    onInit(widgetsBinding);

    FlutterError.onError = (error) {
      FlutterError.dumpErrorToConsole(error);
      Console.log('FlutterError::', error);
      // throw error;
    };

    final StatefulWidget app = FutureBuilder(
      future: await _onCreate(),
      builder: (context, snapshot) => onCreateView(),
    );

    BlocOverrides.runZoned(
      () {
        runApp(app);
      },
      blocObserver: AppBlocObserver(),
    );

    onDidCreateView();
  }

  /// Create main view
  ///
  /// Return [Widget]
  Widget onCreateView();

  /// Call on init class first
  Future? onInit(WidgetsBinding widgetsBinding);

  /// Add injection
  /// ```dart
  /// @override
  /// Future? onInjection() async {
  ///   await AppInjection().init();
  /// }
  /// ```
  Future? onInjection();

  /// Add setup environment
  ///
  /// ```dart
  /// Environment.init(flavor: Flavor.production);
  /// ```
  Future? onSetupEnv();

  /// Call on [onCreateView] did call
  void onDidCreateView();

  /// Setup app when app is created
  /// ```dart
  /// @override
  /// FutureOr<void> onCreate() {
  ///   SystemChrome.setPreferredOrientations([
  ///     DeviceOrientation.portraitUp,
  ///     DeviceOrientation.portraitDown,
  ///   ]);
  ///
  ///   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  ///     statusBarColor: Colors.black,
  ///     statusBarBrightness: Brightness.dark,
  ///   ));
  /// }
  /// ```
  FutureOr<void> onCreate();

  Future? _onCreate() async {
    await onInjection();
    await onSetupEnv();
    await onCreate();
  }
}
