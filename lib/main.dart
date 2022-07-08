import 'dart:async';

import 'package:config_project/config_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/app_injection.dart';
import 'package:flutter_base/app_root.dart';
import 'package:flutter_base/core/app_main.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  AppMainImpl();
}

class AppMainImpl extends AppMain {
  @override
  Future? onInit(widgetsBinding) async {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }

  @override
  Future? onInjection() async {
    await AppInjection().init();
  }

  @override
  Future? onSetupEnv() async {
    Environment.init(flavor: Flavor.production);
  }

  @override
  FutureOr<void> onCreate() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.dark,
    ));
  }

  @override
  Widget onCreateView() {
    ErrorWidget.builder = (FlutterErrorDetails details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
      return Container(color: Colors.transparent);
    };

    return const AppRoot();
  }

  @override
  void onDidCreateView() {
    FlutterNativeSplash.remove();
  }
}
