import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loopify/core/routes/routes_params.dart';
import 'package:loopify/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:loopify/features/home/presentation/screens/home_screen.dart';
import 'package:loopify/features/listing/presentation/screens/all_listings_screen.dart';
import 'package:loopify/features/listing/presentation/screens/create_listing_screen.dart';
import 'package:loopify/features/listing/presentation/screens/product_details_screen.dart';

enum AppRoutes {
  home('home', '/'),
  categories('categories', '/categories'),
  chat('chat', '/chat'),
  settings('settings', '/settings'),
  productAdd('productAdd', 'products/add'),
  productEdit('productEdit', 'products/edit/:${RoutesParams.productId}'),
  productDetails('productDetails', 'products/:${RoutesParams.productId}');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
}

final _rootNavigationKey = GlobalKey<NavigatorState>();
final _shellNavigationKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigationKey,
  initialLocation: AppRoutes.home.path,
  debugLogDiagnostics: kDebugMode,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigationKey,
      builder: (context, state, child) => DashboardScreen(child: child),
      routes: [
        GoRoute(
          parentNavigatorKey: _shellNavigationKey,
          path: AppRoutes.home.path,
          name: AppRoutes.home.name,
          builder: HomeScreen.route,
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNavigationKey,
              path: AppRoutes.productAdd.path,
              name: AppRoutes.productAdd.name,
              builder: CreateListingScreen.route,
            ),
            GoRoute(
              parentNavigatorKey: _rootNavigationKey,
              path: AppRoutes.productDetails.path,
              name: AppRoutes.productDetails.name,
              builder: ProductDetailsScreen.route,
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigationKey,
          path: AppRoutes.categories.path,
          name: AppRoutes.categories.name,
          builder: AllListingsScreen.route,
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNavigationKey,
              path: AppRoutes.productEdit.path,
              name: AppRoutes.productEdit.name,
              builder: CreateListingScreen.route,
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigationKey,
          path: AppRoutes.chat.path,
          name: AppRoutes.chat.name,
          builder: ChatScreen.route,
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigationKey,
          path: AppRoutes.settings.path,
          name: AppRoutes.settings.name,
          builder: SettingScreen.route,
        ),
      ],
    ),
  ],
);
