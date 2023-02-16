import 'package:flutter/material.dart';

import '/configs/login_info.dart';
import '/configs/service_locator.dart';

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
