import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/utility/assets.dart';
import 'package:flutter_base/core/widgets/button/button_base.dart';
import 'package:flutter_svg/svg.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBase(
      height: 68,
      width: 86,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      backgroundColor: AppColor.card,
      borderRadius: BorderRadius.circular(34),
      onPress: () {},
      child: Align(
        alignment: Alignment.centerLeft,
        child: SvgPicture.asset(IconPath.menu, width: 30),
      ),
    );
  }
}
