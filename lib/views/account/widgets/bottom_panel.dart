/// Created by nghinv on Sun Jul 03 2022

import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/models/token/token.dart';
import 'package:flutter_base/views/account/widgets/bottom_panel_title.dart';
import 'package:flutter_base/views/account/widgets/bottom_panel_token_detail.dart';
import 'package:flutter_base/views/account/widgets/bottom_panel_tokens.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class BottomPanel extends StatefulWidget {
  const BottomPanel({Key? key}) : super(key: key);

  @override
  State<BottomPanel> createState() => _BottomPanelState();
}

class _BottomPanelState extends State<BottomPanel> {
  late final List<Token> _tokens;
  late Token tokenSelected;

  @override
  void initState() {
    super.initState();
    _tokens = const [
      Token(name: "RSWP", symbol: "rswp", address: "1231231", tau: 10),
      Token(name: "GOLD", symbol: "gold", address: "1231231", tau: 0),
      Token(name: "GOLD", symbol: "gold", address: "1231231", tau: 0),
      Token(name: "GOLD", symbol: "gold", address: "1231231", tau: 0),
    ];
    tokenSelected = _tokens.first;
  }

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      minHeight: 180,
      maxHeight: 516,
      color: AppColor.card,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
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
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 26),
          Center(
            child: Container(
              width: 62,
              height: 9,
              decoration: BoxDecoration(
                color: AppColor.card3,
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const BottomPanelTitle(title: 'Tokens'),
          const SizedBox(height: 16),
          BottomPanelTokens(
            tokens: _tokens,
            tokenSelected: tokenSelected,
            onChangeTokenSelect: (token) {
              setState(() {
                tokenSelected = token;
              });
            },
          ),
          const SizedBox(height: 40),
          const BottomPanelTitle(title: 'Details'),
          const SizedBox(height: 16),
          BottomPanelTokenDetail(
            tokenSelected: tokenSelected,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
