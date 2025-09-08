import 'package:flutter/material.dart';
import 'package:loopify/core/database/app_database.dart';
import 'package:loopify/core/theme/app_theme.dart';
import 'package:loopify/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:loopify/features/listing/data/data_source/product_local_data_source.dart';
import 'package:loopify/features/listing/data/repository/product_local_repository.dart';

final appDatabase = AppDatabase();
final productLocalRepository = ProductLocalRepository(
  ProductLocalDataSource(appDatabase),
);

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
