import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The login information.
class LoginInfo extends ChangeNotifier {
  /// The username of login.
  String get userName => _userName;
  String _userName = '';

  /// Whether a user has logged in.
  // bool get loggedIn => _userName.isNotEmpty;

  // Future<bool?> get loggedIn async => await SharedPreferences.getInstance()
  //   ..getString('username')?.isNotEmpty;

  Future<bool> loggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('username')?.isNotEmpty ?? false;
  }

  /// Logs in a user.
  void login(String userName) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('username', userName);

    _userName = userName;
    notifyListeners();
  }

  /// Logs out the current user.
  void logout() {
    _userName = '';
    notifyListeners();
  }
}
