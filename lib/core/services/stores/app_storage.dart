import 'package:di/di.dart';
import 'package:config_project/config_project.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  static final SharedPreferences _sharedPreferences =
      sl.get<SharedPreferences>();

  static const String sharedPreLanguage = 'language';
  static const String sharedPreTheme = 'theme';
  static const String sharedPreAutoLogin = 'autoLogin';
  static const String sharedPreNotify = 'notify';
  static const String sharedPreVibrate = 'vibrate';
  static const String sharedPreShowStatusBar = 'showStatusBar';
  static const String sharedPreFirstInstall = 'firstInstall';
  static const String sharedPreIsDebug = 'isDebug';

  static String getLanguage() {
    final String? language = _sharedPreferences.getString(sharedPreLanguage);
    return language ?? ConfigProject.appDefaultConfig.language;
  }

  static void setLanguage(String language) {
    _sharedPreferences.setString(sharedPreLanguage, language);
  }

  static String getTheme() {
    final String? theme = _sharedPreferences.getString(sharedPreTheme);
    return theme ?? ConfigProject.appDefaultConfig.theme;
  }

  static void setTheme(String theme) {
    _sharedPreferences.setString(sharedPreTheme, theme);
  }

  static bool getAutoLogin() {
    final bool? autoLogin = _sharedPreferences.getBool(sharedPreAutoLogin);
    return autoLogin ?? ConfigProject.appDefaultConfig.autoLogin;
  }

  static void setAutoLogin(bool autoLogin) {
    _sharedPreferences.setBool(sharedPreAutoLogin, autoLogin);
  }

  static bool getNotify() {
    final bool? notify = _sharedPreferences.getBool(sharedPreNotify);
    return notify ?? ConfigProject.appDefaultConfig.notify;
  }

  static void setNotify(bool notify) {
    _sharedPreferences.setBool(sharedPreNotify, notify);
  }

  static bool getVibrate() {
    final bool? vibrate = _sharedPreferences.getBool(sharedPreVibrate);
    return vibrate ?? ConfigProject.appDefaultConfig.vibrate;
  }

  static void setVibrate(bool vibrate) {
    _sharedPreferences.setBool(sharedPreVibrate, vibrate);
  }

  static bool getShowStatusBar() {
    final bool? showStatusBar =
        _sharedPreferences.getBool(sharedPreShowStatusBar);
    return showStatusBar ?? ConfigProject.appDefaultConfig.showStatusBar;
  }

  static void setShowStatusBar(bool showStatusBar) {
    _sharedPreferences.setBool(sharedPreShowStatusBar, showStatusBar);
  }

  static bool getFirstInstall() {
    final bool? firstInstall =
        _sharedPreferences.getBool(sharedPreFirstInstall);
    return firstInstall ?? ConfigProject.appDefaultConfig.firstInstall;
  }

  static void setFirstInstall(bool firstInstall) {
    _sharedPreferences.setBool(sharedPreFirstInstall, firstInstall);
  }

  static bool getIsDebug() {
    final bool? isDebug = _sharedPreferences.getBool(sharedPreIsDebug);
    return isDebug ?? ConfigProject.appDefaultConfig.isDebug;
  }

  static void setIsDebug(bool isDebug) {
    _sharedPreferences.setBool(sharedPreIsDebug, isDebug);
  }
}
