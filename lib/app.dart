import 'package:flutter/material.dart';
import 'package:loopify/features/dashboard/presentation/screens/dashboard_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loopify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF32B780)),
        fontFamily: 'Urbanist',
      ),
      home: DashboardScreen(),
    );
  }
}
