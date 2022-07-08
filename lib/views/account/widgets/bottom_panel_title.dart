import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';

class BottomPanelTitle extends StatelessWidget {
  final String title;

  const BottomPanelTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppDimension.defaultPadding),
      child: Text(
        title,
        style: AppTypography.caption.copyWith(color: AppColor.card3),
      ),
    );
  }
}
