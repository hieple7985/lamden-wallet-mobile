import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/utility/assets.dart';
import 'package:flutter_base/core/widgets/button/button_base.dart';
import 'package:flutter_base/models/token/token.dart';
import 'package:flutter_svg/svg.dart';

class BottomPanelTokenDetail extends StatelessWidget {
  final Token tokenSelected;

  const BottomPanelTokenDetail({Key? key, required this.tokenSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppDimension.defaultPadding),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColor.card2.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  IconPath.logo,
                  width: 34,
                  height: 34,
                ),
                const SizedBox(width: 10),
                Text(
                  'Rockets sWap',
                  style: AppTypography.body2,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(tokenSelected.name, style: AppTypography.caption),
            Text(
              tokenSelected.tau.toInt().toString(),
              style: AppTypography.body2.copyWith(fontSize: 60),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildButtonDetail(
                  title: 'TRANSFER',
                  onPress: () {},
                ),
                buildButtonDetail(
                  title: 'APPROVE',
                  onPress: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ButtonBase buildButtonDetail({
    required String title,
    VoidCallback? onPress,
  }) {
    return ButtonBase(
      onPress: onPress,
      backgroundColor: AppColor.card3.withOpacity(0.8),
      borderRadius: BorderRadius.circular(10),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      child: Text(title),
    );
  }
}
