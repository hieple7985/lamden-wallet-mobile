class Validator {
  Validator();

  String? notEmpty(String? value) {
    String pattern = r"^(?!\s*$).+";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'This field can not empty';
    } else {
      return null;
    }
  }
}
