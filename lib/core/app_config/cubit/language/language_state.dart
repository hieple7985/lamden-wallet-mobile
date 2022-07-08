part of 'language_cubit.dart';

@immutable
abstract class LanguageState extends Equatable {
  final Locale locale;

  const LanguageState(this.locale);

  @override
  List<Object> get props => [locale];
}

class LanguageChange extends LanguageState {
  const LanguageChange(super.locale);
}

class ToggleLanguage extends LanguageChange {
  const ToggleLanguage(super.locale);
}
