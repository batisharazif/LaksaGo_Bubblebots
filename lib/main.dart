import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(AdminDashboardApp());
}

class AdminDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/', // Set initial screen
      routes: AppRoutes.routes, // Import routes
    );
  }
}
