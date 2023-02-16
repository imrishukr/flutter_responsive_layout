import 'package:get_it/get_it.dart';

import '/configs/login_info.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => LoginInfo());
}
