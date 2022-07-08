import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/widgets/button/button.dart';
import 'package:flutter_base/core/widgets/keyboard_scroll/keyboard_scroll.dart';
import 'package:flutter_base/core/widgets/logo/logo.dart';

class CreateAccountExistingPage extends StatefulWidget {
  const CreateAccountExistingPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountExistingPage> createState() =>
      _CreateAccountExistingPageState();
}

class _CreateAccountExistingPageState extends State<CreateAccountExistingPage> {
  late final TextEditingController _privateKeyController;
  late final TextEditingController _accountNameController;

  @override
  void initState() {
    super.initState();
    _privateKeyController = TextEditingController();
    _accountNameController = TextEditingController();
  }

  @override
  void dispose() {
    _privateKeyController.dispose();
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
                  "Add an Existing Account.",
                  style: AppTypography.body,
                ),
                const SizedBox(height: 60),
                TextFormField(
                  controller: _privateKeyController,
                  decoration: const InputDecoration(
                    labelText: "Private Key",
                  ),
                  obscureText: true,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _accountNameController,
                  decoration: const InputDecoration(
                    labelText: "Account Nickname (optional)",
                  ),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.name,
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
