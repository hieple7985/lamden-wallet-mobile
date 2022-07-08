import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/utility/assets.dart';
import 'package:flutter_base/core/widgets/button/button.dart';
import 'package:flutter_base/core/widgets/keyboard_scroll/keyboard_scroll.dart';
import 'package:flutter_base/core/widgets/logo/logo.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: KeyboardScroll(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(
                  flex: 2,
                  child: Logo(),
                ),
                Text(
                  "Sign In",
                  style: AppTypography.header,
                ),
                const SizedBox(height: 13),
                Text(
                  "Access your Lamden Wallet.",
                  style: AppTypography.body,
                ),
                const Spacer(),
                buildInputPassword(),
                const SizedBox(height: 24),
                Button(
                  text: "LOGIN",
                  onPressed: () {
                    // Console.log(_passwordController.text);
                  },
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildInputPassword() {
    return TextFormField(
      controller: _passwordController,
      decoration: const InputDecoration(
        labelText: "Password",
      ),
      obscureText: true,
      cursorColor: Colors.white,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      maxLength: 15,
      style: AppTypography.title.copyWith(color: Colors.white),
      onChanged: (value) {},
    );
  }
}
