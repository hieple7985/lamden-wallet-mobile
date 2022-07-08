import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Text(
        title,
        style: AppTypography.header2,
      ),
    );
  }
}
