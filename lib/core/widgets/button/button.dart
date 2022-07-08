import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double? borderRadius;
  final double? height;

  const Button({
    Key? key,
    required this.text,
    this.onPressed,
    this.borderRadius = 10,
    this.height = 66,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(borderRadius!),
      child: Ink(
        height: height,
        decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(borderRadius!),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
              ),
            ]),
        child: Center(
          child: Text(
            text,
            style: AppTypography.button,
          ),
        ),
      ),
    );
  }
}
