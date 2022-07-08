part of style;

abstract class BaseTheme {
  ThemeData get darkTheme;
  ThemeData get lightTheme;
}

class AppTheme extends BaseTheme {
  @override
  ThemeData get darkTheme => ThemeData(
        primaryColor: AppColor.primary,
        scaffoldBackgroundColor: AppColor.background2,
        appBarTheme: const AppBarTheme(
          color: Colors.green,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: AppTypography.title.copyWith(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      );

  @override
  ThemeData get lightTheme => ThemeData(
        primaryColor: AppColor.primary,
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
      );
}
