import 'package:dashboard_example/configs/login_info.dart';
import 'package:dashboard_example/configs/service_locator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _loginInfo = locator<LoginInfo>();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _loginInfo.login('imrishu'),
          child: Text('Login'),
        ),
      ),
    );
  }
}
