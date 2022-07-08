/// Created by nghinv on Mon Jun 27 2022

import 'package:flutter/material.dart';
import 'package:flutter_base/core/app_config/cubit/language/language_cubit.dart';
import 'package:flutter_base/core/app_config/cubit/theme/theme_cubit.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/routes/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:config_project/config_project.dart';
import 'app_providers.dart';
import 'core/generated/l10n.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppProviders.providers,
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          final themeMode = context.watch<ThemeCubit>().state.themeMode;
          AppTheme appTheme = AppTheme();

          return MaterialApp.router(
            title: ConfigProject.projectName,
            debugShowCheckedModeBanner: false,
            scaffoldMessengerKey: rootScaffoldMessengerKey,
            theme: appTheme.lightTheme,
            darkTheme: appTheme.darkTheme,
            themeMode: themeMode,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            localeResolutionCallback: ((locale, supportedLocales) {
              if (supportedLocales
                  .map((e) => e.languageCode)
                  .contains(locale?.languageCode)) {
                return locale;
              }

              return ConfigProject.defaultLanguage;
            }),
            locale: state.locale,
            routeInformationParser: Routes.route.routeInformationParser,
            routerDelegate: Routes.route.routerDelegate,
          );
        },
      ),
    );
  }
}
