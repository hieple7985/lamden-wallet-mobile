import 'package:flutter/material.dart';
import 'package:flutter_base/core/app_config/cubit/theme/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeThemePage extends StatelessWidget {
  const ChangeThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Theme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...ThemeMode.values
                .map((theme) => ElevatedButton(
                      onPressed: () {
                        context.read<ThemeCubit>().changeTheme(theme);
                      },
                      child: Text(theme.name),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
