import 'package:flutter/material.dart';

class CustomRoutePage<T> extends PageRoute<T> {
  final RoutePageBuilder pageBuilder;
  final PageTransitionsBuilder matchingBuilder =
      const CupertinoPageTransitionsBuilder(); // Default iOS/macOS (to get the swipe right to go back gesture)

  CustomRoutePage({
    RouteSettings? settings,
    required this.pageBuilder,
    this.transitionDuration = const Duration(milliseconds: 300),
    this.reverseTransitionDuration = const Duration(milliseconds: 300),
    bool fullScreenDialog = false,
  }) : super(settings: settings, fullscreenDialog: fullScreenDialog);

  @override
  final Duration reverseTransitionDuration;

  @override
  Color? get barrierColor => null;

  @override
  bool get opaque => true;

  @override
  bool get barrierDismissible => false;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return pageBuilder(context, animation, secondaryAnimation);
  }

  @override
  bool get maintainState => true;

  @override
  final Duration transitionDuration;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return matchingBuilder.buildTransitions<T>(
      this,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}
