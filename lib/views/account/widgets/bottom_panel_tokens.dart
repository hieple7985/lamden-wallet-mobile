import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/utility/assets.dart';
import 'package:flutter_base/core/widgets/button/button_base.dart';
import 'package:flutter_base/models/token/token.dart';
import 'package:flutter_base/routes/routes.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class BottomPanelTokens extends StatelessWidget {
  final List<Token> tokens;
  final Token tokenSelected;
  final Function(Token token)? onChangeTokenSelect;

  const BottomPanelTokens({
    Key? key,
    required this.tokens,
    required this.tokenSelected,
    this.onChangeTokenSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        const SizedBox(width: AppDimension.defaultPadding),
        buildButtonAdd(context),
        const SizedBox(width: 8),
        SizedBox(
          width: width - (8 + 62 + AppDimension.defaultPadding),
          height: 62,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 22),
            itemCount: tokens.length,
            separatorBuilder: (context, index) => const SizedBox(width: 30),
            itemBuilder: (context, index) {
              final token = tokens[index];
              return buildButtonToken(
                title: token.name,
                tau: token.tau,
                isSelected: tokenSelected.name == token.name,
                onPress: () {
                  onChangeTokenSelect!(token);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  ButtonBase buildButtonAdd(BuildContext context) {
    return ButtonBase(
      onPress: () {
        context.push(RoutePaths.addToken);
      },
      width: 62,
      height: 62,
      backgroundColor: AppColor.card2.withOpacity(0.25),
      borderRadius: BorderRadius.circular(16),
      child: Center(
        child: SvgPicture.asset(
          IconPath.add,
          width: 20,
          height: 20,
        ),
      ),
    );
  }

  ButtonBase buildButtonToken({
    required String title,
    required double tau,
    void Function()? onPress,
    bool isSelected = false,
  }) {
    return ButtonBase(
      onPress: onPress,
      height: 62,
      borderRadius: BorderRadius.circular(31),
      backgroundColor:
          isSelected ? AppColor.card3 : AppColor.card3.withOpacity(0.4),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            IconPath.logo,
            width: 34,
            height: 34,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTypography.button2.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                tau.toInt().toString(),
                style: AppTypography.button2.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
