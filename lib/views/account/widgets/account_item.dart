import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/utility/assets.dart';
import 'package:flutter_base/core/widgets/button/button_base.dart';
import 'package:flutter_base/models/account/account.dart';
import 'package:flutter_svg/svg.dart';

class AccountItem extends StatelessWidget {
  final Account account;
  final void Function()? onPress;

  const AccountItem({
    Key? key,
    required this.account,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBase(
      onPress: onPress,
      padding: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(15),
      backgroundColor: AppColor.card,
      child: Row(
        children: [
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              color: AppColor.card2.withOpacity(0.25),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    IconPath.logo,
                    width: 48,
                    height: 48,
                  ),
                  if (account.link)
                    Positioned(
                      bottom: 4,
                      right: 4,
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          color: AppColor.secondary,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            IconPath.link,
                            height: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(account.name, style: AppTypography.body2),
                const SizedBox(height: 8),
                Text(
                  '${account.tau.toInt()} Tau   ${account.progress.toStringAsFixed(1)}%',
                  style: AppTypography.caption.copyWith(color: AppColor.card2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
