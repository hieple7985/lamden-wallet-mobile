import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/widgets/button/button.dart';
import 'package:flutter_base/core/widgets/logo/logo.dart';
import 'package:flutter_base/routes/routes.dart';
import 'package:go_router/go_router.dart';

class AddAccountPage extends StatelessWidget {
  const AddAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              const Logo(),
              const SizedBox(height: 60),
              Text(
                "Add Account",
                style: AppTypography.header,
              ),
              const SizedBox(height: 12),
              Text(
                "Creating a New Account.",
                style: AppTypography.body,
              ),
              const SizedBox(height: 60),
              Button(
                text: "CREATE NEW",
                onPressed: () {
                  context.push(RoutePaths.createAccount);
                },
              ),
              const SizedBox(height: 32),
              Button(
                text: "ADD EXISTING",
                onPressed: () {
                  context.push(RoutePaths.createAccountExisting);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
