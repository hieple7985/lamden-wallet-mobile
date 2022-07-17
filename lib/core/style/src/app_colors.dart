part of style;

class AppColor {
  static const Color primary = Color(0xFF461BC2);

  static const Color secondary = Color(0xFF4FB8FF);

  static const Color background = Color(0xFF000000);
  static const Color background2 = Color(0xFF151515);

  static const Color card = Color(0xFF383838);
  static const Color card2 = Color(0xFF84949E);
  static const Color card3 = Color(0xFFA4B2BB);

  static const Color black = Color(0xFF151515);
  static const Color lightBlack = Color(0xFF323232);
  static const Color purple = Color(0xFF461BC2);
  static const Color lightBlue = Color(0xFF4FB8FF);
  static const Color darkGray = Color(0xFF696969);
  static const Color gray = Color(0xFFE0E0E0);
  static const Color orange = Color(0xFFFF8A00);
  static const Color green = Color(0xFF1BC272);

  static const LinearGradient gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFA26AFA),
      Color(0xFF5108C7),
    ],
  );
}
