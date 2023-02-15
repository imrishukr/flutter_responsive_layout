import 'package:dashboard_example/configs/login_info.dart';
import 'package:dashboard_example/configs/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/constants/route_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _loginInfo = locator<LoginInfo>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async => await _loginInfo.logout(),
            icon: Icon(
              Icons.logout,
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => context.goNamed(
          RouteConstants.detailsScreen,
          params: {'id': '123'},
        ),
      ),
      body: Center(
        child: SelectableText('Home Screen'),
      ),
    );
  }
}
