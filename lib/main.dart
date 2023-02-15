import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import '/configs/route_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // turn off the # in the URLs on the web
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouteConfig.appRouter,
    );
  }
}
