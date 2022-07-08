import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonIcon extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onPress;

  const CustomButtonIcon({
    Key? key,
    required this.title,
    required this.icon,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 45,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: AppTypography.button2,
          ),
        ],
      ),
    );
  }
}
