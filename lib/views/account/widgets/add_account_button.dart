import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/utility/assets.dart';
import 'package:flutter_base/core/widgets/button/button_base.dart';
import 'package:flutter_svg/svg.dart';

class AddAccountButton extends StatelessWidget {
  final void Function()? onPress;

  const AddAccountButton({Key? key, this.onPress}) : super(key: key);

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
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: SvgPicture.asset(
                IconPath.add,
                width: 20,
                height: 20,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Center(
              child: Text(
                "Create New Account",
                style: AppTypography.body2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
