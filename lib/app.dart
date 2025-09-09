import 'package:flutter/material.dart';
import 'package:loopify/core/theme/app_theme.dart';
import 'package:loopify/features/dashboard/presentation/screens/dashboard_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loopify',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: DashboardScreen(),
    );
  }
}
