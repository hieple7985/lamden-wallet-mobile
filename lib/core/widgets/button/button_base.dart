import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final void Function()? onPress;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const ButtonBase({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.onPress,
    this.borderRadius,
    this.width,
    this.height,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onPress,
        borderRadius: borderRadius,
        enableFeedback: false,
        child: Ink(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: child,
        ),
      ),
    );
  }
}
