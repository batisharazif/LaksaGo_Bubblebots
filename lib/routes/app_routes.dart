import 'package:flutter/material.dart';
import '../screens/admin_login_screen.dart';
import '../screens/admin_password_reset_screen.dart';
import '../screens/admin_home_screen.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => LoginScreen(),
    '/password_reset': (context) => AdminPasswordResetScreen(),
    '/admin_home': (context) => AdminHomeScreen(),
  };
}
