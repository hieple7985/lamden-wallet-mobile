import 'package:flutter/material.dart';

import '../../../core/style/style.dart';

class TauView extends StatelessWidget {
  final double tau;

  const TauView({Key? key, required this.tau}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TAU',
              style: AppTypography.body2.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              (tau).toInt().toString(),
              style: const TextStyle(
                fontSize: 96,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '\$ ${tau.toStringAsFixed(2)}',
              style: AppTypography.body2,
            ),
          ],
        ),
      ),
    );
  }
}
