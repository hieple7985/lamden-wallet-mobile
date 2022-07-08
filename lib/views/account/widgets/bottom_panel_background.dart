import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';

class BottomPanelBackground extends StatelessWidget {
  final Widget child;

  const BottomPanelBackground({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.card,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(0, -4),
            blurRadius: 36,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: child,
    );
  }
}
