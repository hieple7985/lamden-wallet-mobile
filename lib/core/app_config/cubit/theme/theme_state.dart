part of 'theme_cubit.dart';

@immutable
abstract class ThemeState extends Equatable {
  final ThemeMode themeMode;

  const ThemeState(this.themeMode);

  @override
  List<Object> get props => [themeMode];
}

class ChangeTheme extends ThemeState {
  const ChangeTheme(super.themeMode);
}
