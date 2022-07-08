import 'package:flutter/material.dart';
import 'package:flutter_base/core/app_config/cubit/language/language_cubit.dart';
import 'package:flutter_base/core/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class Country {
  final String name;
  final String code;
  final String flag;

  Country({
    required this.name,
    required this.code,
    required this.flag,
  });
}

List<Country> countries = [
  Country(
    name: 'English',
    code: 'en',
    flag: 'assets/icons/flags/us.svg',
  ),
  Country(
    name: 'Tiếng Việt',
    code: 'vi',
    flag: 'assets/icons/flags/vn.svg',
  ),
];

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).language),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: DropdownButton(
              items: countries
                  .map(
                    (country) => DropdownMenuItem(
                      value: country.code,
                      child: Row(
                        children: [
                          SvgPicture.asset(country.flag),
                          const SizedBox(width: 6),
                          Text(country.name),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              value: context.read<LanguageCubit>().state.locale.languageCode,
              onChanged: (value) {
                // context.read<LanguageCubit>().changeLanguage(value!);
              },
              underline: const SizedBox(),
            ),
          )
        ],
      ),
    );
  }
}
