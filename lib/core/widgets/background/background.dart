import 'package:flutter/material.dart';
import 'package:flutter_base/core/utility/assets.dart';

class Background extends StatelessWidget {
  final Widget child;
  final Widget? actionButton;
  final Widget? bottomPanel;

  const Background({
    Key? key,
    required this.child,
    this.actionButton,
    this.bottomPanel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: -147,
          left: -432,
          child: Image.asset(
            ImagePath.background,
            fit: BoxFit.contain,
            height: 653,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 160,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x00151515), Color(0xFF151515)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.6]),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: 0,
          child: child,
        ),
        if (actionButton != null)
          Positioned(
            top: height / 3,
            right: -32,
            child: actionButton!,
          ),
        if (bottomPanel != null)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: bottomPanel!,
          ),
      ],
    );
  }
}
