import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/widgets/background/background.dart';
import 'package:flutter_base/models/account/account.dart';
import 'package:flutter_base/routes/routes.dart';
import 'package:flutter_base/views/account/widgets/account_item.dart';
import 'package:flutter_base/views/account/widgets/action_button.dart';
import 'package:flutter_base/views/account/widgets/add_account_button.dart';
import 'package:flutter_base/views/account/widgets/header.dart';
import 'package:flutter_base/views/account/widgets/tau_view.dart';
import 'package:go_router/go_router.dart';

List<Account> accounts = [
  const Account(name: "Elyn Account", tau: 0, link: false, progress: 0.0),
  const Account(name: "Lamden Paint", tau: 0, link: true, progress: 0.0),
  const Account(name: "Rocket Swap", tau: 0, link: true, progress: 0.0),
  const Account(name: "Rocket Swap", tau: 0, link: true, progress: 0.0),
  const Account(name: "Rocket Swap", tau: 0, link: true, progress: 0.0),
];

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        actionButton: const ActionButton(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Header(title: 'Wallet Total'),
              const TauView(tau: 0.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
                child: Text(
                  'Account',
                  style: AppTypography.body2.copyWith(color: AppColor.card2),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  itemCount: accounts.length,
                  separatorBuilder: (_, index) => const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    return AccountItem(
                      account: accounts[index],
                      onPress: () {
                        context.push(
                          RoutePaths.accountDetail,
                          extra: accounts[index],
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: AddAccountButton(
                  onPress: () {
                    context.push(RoutePaths.addAccount);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
