import 'package:flutter/material.dart';
import 'package:flutter_base/core/utility/assets.dart';
import 'package:flutter_base/core/widgets/background/background.dart';
import 'package:flutter_base/models/account/account.dart';
import 'package:flutter_base/views/account/widgets/action_button.dart';
import 'package:flutter_base/views/account/widgets/bottom_panel.dart';
import 'package:flutter_base/views/account/widgets/custom_button_icon.dart';
import 'package:flutter_base/views/account/widgets/header.dart';
import 'package:flutter_base/views/account/widgets/tau_view.dart';

class AccountDetailPage extends StatelessWidget {
  final Account account;

  const AccountDetailPage({Key? key, required this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        actionButton: const ActionButton(),
        bottomPanel: const BottomPanel(),
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Header(title: account.name),
              TauView(tau: account.tau),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  children: [
                    CustomButtonIcon(
                      title: 'SEND TX',
                      icon: IconPath.send,
                      onPress: () {},
                    ),
                    const Spacer(),
                    CustomButtonIcon(
                      title: 'COPY ADDRESS',
                      icon: IconPath.copy,
                      onPress: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
