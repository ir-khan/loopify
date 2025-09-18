import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/core/routes/routes.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/features/dashboard/presentation/widgets/nav_bar_item.dart';

class DashboardScreen extends StatefulWidget {
  final Widget child;

  const DashboardScreen({super.key, required this.child});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: widget.child,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.goNamed(AppRoutes.productAdd.name);
        },
        child: Container(
          width: 32,
          height: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary,
          ),
          child: Icon(Icons.add_rounded, color: AppColors.white, size: 22),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 40,
          children: [
            Row(
              spacing: 8,
              children: [
                NavBarItem(
                  selectedSvg: AppAssets.homeFilled,
                  unselectedSvg: AppAssets.home,
                  label: 'Home',
                  isSelected:
                      GoRouter.of(context).state.name == AppRoutes.home.name,
                  onTap: () => context.goNamed(AppRoutes.home.name),
                ),
                NavBarItem(
                  selectedSvg: AppAssets.layoutFilled,
                  unselectedSvg: AppAssets.layout,
                  label: 'Categories',
                  isSelected:
                      GoRouter.of(context).state.name ==
                      AppRoutes.categories.name,
                  onTap: () => context.goNamed(AppRoutes.categories.name),
                ),
              ],
            ),
            Row(
              spacing: 8,
              children: [
                NavBarItem(
                  selectedSvg: AppAssets.chatFilled,
                  unselectedSvg: AppAssets.chat,
                  label: 'Chat',
                  isSelected:
                      GoRouter.of(context).state.name == AppRoutes.chat.name,
                  onTap: () => context.goNamed(AppRoutes.chat.name),
                ),
                NavBarItem(
                  selectedSvg: AppAssets.settingFilled,
                  unselectedSvg: AppAssets.setting,
                  label: 'Settings',
                  isSelected:
                      GoRouter.of(context).state.name ==
                      AppRoutes.settings.name,
                  onTap: () => context.goNamed(AppRoutes.settings.name),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  const ChatScreen.route(
    BuildContext context,
    GoRouterState state, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(child: Text('Chat Screen')),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  const SettingScreen.route(
    BuildContext context,
    GoRouterState state, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(child: Text('Setting Screen')),
    );
  }
}
