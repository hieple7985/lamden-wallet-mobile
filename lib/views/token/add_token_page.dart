import 'package:flutter/material.dart';
import 'package:flutter_base/core/style/style.dart';
import 'package:flutter_base/core/widgets/button/button.dart';
import 'package:flutter_base/core/widgets/keyboard_scroll/keyboard_scroll.dart';
import 'package:flutter_base/core/widgets/logo/logo.dart';

class AddTokenPage extends StatefulWidget {
  const AddTokenPage({Key? key}) : super(key: key);

  @override
  State<AddTokenPage> createState() => _AddTokenPageState();
}

class _AddTokenPageState extends State<AddTokenPage> {
  late final TextEditingController _contractNameController;
  late final TextEditingController _tokenNameController;
  late final TextEditingController _tokenSymbolController;

  @override
  void initState() {
    super.initState();
    _contractNameController = TextEditingController();
    _tokenNameController = TextEditingController();
    _tokenSymbolController = TextEditingController();
  }

  @override
  void dispose() {
    _contractNameController.dispose();
    _tokenNameController.dispose();
    _tokenSymbolController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: KeyboardScroll(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 60),
                const Logo(),
                const SizedBox(height: 60),
                Text(
                  "Add Token",
                  style: AppTypography.header,
                ),
                const SizedBox(height: 12),
                Text(
                  "Linking Token to Account.",
                  style: AppTypography.body,
                ),
                const SizedBox(height: 60),
                TextFormField(
                  controller: _contractNameController,
                  decoration: const InputDecoration(
                    labelText: "Contract Name",
                  ),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _tokenNameController,
                  decoration: const InputDecoration(
                    labelText: "Token Name",
                  ),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _tokenNameController,
                  decoration: const InputDecoration(
                    labelText: "Token Symbol",
                  ),
                  obscureText: true,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 32),
                Button(
                  text: "ADD TOKEN",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
