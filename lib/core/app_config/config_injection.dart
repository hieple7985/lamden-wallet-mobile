import 'package:services/di/di.dart';

import 'cubit/language/language_cubit.dart';
import 'cubit/theme/theme_cubit.dart';

class ConfigInjection extends DIModule {
  @override
  Future<void> inject() async {
    sl.registerFactory(() => LanguageCubit());
    sl.registerFactory(() => ThemeCubit());
  }
}
