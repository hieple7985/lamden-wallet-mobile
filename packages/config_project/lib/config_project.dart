/// Created by nghinv on Tue Jun 07 2022

library config_project;

import 'dart:ui' as ui;

import 'package:flutter/material.dart';

part 'environment/env.dart';

class ConfigProject {
  static const String projectName = "Flutter Base";

  static const String buildDate = "20/5/2022";

  static String defaultSystemLocale = ui.window.locale.languageCode;
  static Locale defaultLanguage = Locale(defaultSystemLocale, "");

  static const String defaultTheme = 'light';

  static AppDefaultConfig appDefaultConfig = AppDefaultConfig(
    theme: 'dark',
    language: defaultSystemLocale,
    autoLogin: true,
    notify: true,
    vibrate: true,
    showStatusBar: true,
    firstInstall: false,
    isDebug: false,
  );
}

class AppDefaultConfig {
  final String theme;
  final String language;
  final bool autoLogin;
  final bool notify;
  final bool vibrate;
  final bool showStatusBar;
  final bool firstInstall;
  final bool isDebug;

  AppDefaultConfig({
    required this.theme,
    required this.language,
    required this.autoLogin,
    required this.notify,
    required this.vibrate,
    required this.showStatusBar,
    required this.firstInstall,
    required this.isDebug,
  });
}
