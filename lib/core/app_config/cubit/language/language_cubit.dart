import 'package:flutter_base/core/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../services/stores/app_storage.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageChange(Locale('en', ''))) {
    loadInitLanguage();
  }

  void loadInitLanguage() {
    final currentLanguage = AppStorage.getLanguage();
    if (const AppLocalizationDelegate()
        .isSupported(Locale(currentLanguage, ''))) {
      emit(LanguageChange(Locale(currentLanguage, '')));
    } else {
      emit(const LanguageChange(Locale('en', '')));
    }
  }

  void changeLocale(Locale locale) {
    AppStorage.setLanguage(locale.languageCode);
    return emit(LanguageChange(locale));
  }

  void changeLanguage(String language) {
    AppStorage.setLanguage(language);
    return emit(LanguageChange(Locale(language, '')));
  }
}
