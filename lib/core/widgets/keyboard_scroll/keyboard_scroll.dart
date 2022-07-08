import 'package:flutter/material.dart';

class KeyboardScroll extends StatelessWidget {
  final Widget child;

  const KeyboardScroll({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: child,
        ),
      ),
    );
  }
}
