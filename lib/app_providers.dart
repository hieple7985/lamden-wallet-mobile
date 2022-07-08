/// Created by nghinv on Fri Jun 10 2022

import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/app_config/config_providers.dart';

class AppProviders {
  static List<BlocProvider> get providers => [
        ...ConfigProviders.providers,
      ];
}
