import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import '/configs/login_info.dart';
import '/configs/route_config.dart';
import 'configs/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // turn off the # in the URLs on the web
  usePathUrlStrategy();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loginInfo = locator<LoginInfo>();
    return ChangeNotifierProvider<LoginInfo>.value(
      value: loginInfo,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: RouteConfig.appRouter,
      ),
    );
  }
}
