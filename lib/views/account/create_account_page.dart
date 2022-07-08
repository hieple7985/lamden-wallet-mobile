import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/widgets/button/button.dart';
import 'package:flutter_base/core/widgets/keyboard_scroll/keyboard_scroll.dart';
import 'package:flutter_base/core/widgets/logo/logo.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  late final TextEditingController _accountNameController;

  @override
  void initState() {
    super.initState();
    _accountNameController = TextEditingController();
  }

  @override
  void dispose() {
    _accountNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: KeyboardScroll(
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
                TextFormField(
                  controller: _accountNameController,
                  decoration: const InputDecoration(
                    labelText: "Account Nickname",
                  ),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 32),
                Button(
                  text: "SAVE",
                  onPressed: () {},
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
