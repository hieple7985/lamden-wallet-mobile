import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:services/di/di.dart';
import 'cubit/language/language_cubit.dart';
import 'cubit/theme/theme_cubit.dart';

class ConfigProviders {
  static List<BlocProvider> get providers => [
        BlocProvider<LanguageCubit>(create: (context) => sl()),
        BlocProvider<ThemeCubit>(create: (context) => sl()),
      ];
}
