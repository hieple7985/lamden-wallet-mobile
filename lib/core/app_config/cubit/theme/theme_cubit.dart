import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../services/stores/app_storage.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ChangeTheme(ThemeMode.system)) {
    loadInitTheme();
  }

  void loadInitTheme() {
    final currentTheme = AppStorage.getTheme();
    emit(
      ChangeTheme(
        ThemeMode.values.where((theme) => theme.name == currentTheme).first,
      ),
    );
  }

  changeTheme(ThemeMode themeMode) {
    emit(ChangeTheme(themeMode));
    AppStorage.setTheme(themeMode.name);
  }
}
