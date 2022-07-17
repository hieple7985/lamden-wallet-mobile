import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

abstract class DIModule {
  Future<void> inject();
}

abstract class DIModuleRegister {
  Future<void> init();
}
