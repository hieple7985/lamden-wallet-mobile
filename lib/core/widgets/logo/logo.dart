import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/utility/assets.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          IconPath.logo,
          width: 44,
          height: 44,
        ),
        const SizedBox(width: 6),
        Text(
          "Lamden",
          style: AppTypography.header,
        ),
      ],
    );
  }
}
