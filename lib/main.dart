import 'package:flutter/material.dart';
import 'screens/login_page.dart';

void main() {
  runApp(AdminApp());
}

class AdminApp extends StatelessWidget {
  const AdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(), // Starting point
    );
  }
}

class CustomColors {
  static const Color orange =
      Color(0xFFFF7A00); // Orange color based on the picture
}
