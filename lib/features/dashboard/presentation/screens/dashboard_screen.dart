import 'package:flutter/material.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/features/dashboard/presentation/widgets/nav_bar_item.dart';
import 'package:loopify/features/home/presentation/screens/home_screen.dart';
import 'package:loopify/features/listing/presentation/screens/all_listings_screen.dart';
import 'package:loopify/features/listing/presentation/screens/create_listing_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    const dashboardScreen = [
      HomeScreen(),
      AllListingsScreen(),
      ChatScreen(),
      SettingScreen(),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: dashboardScreen[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateListingScreen()),
          ).then((val) {
            // if (val) {
            setState(() {});
            // }
          });
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
                  isSelected: _currentIndex == 0,
                  onTap: () => setState(() => _currentIndex = 0),
                ),
                NavBarItem(
                  selectedSvg: AppAssets.layoutFilled,
                  unselectedSvg: AppAssets.layout,
                  label: 'Categories',
                  isSelected: _currentIndex == 1,
                  onTap: () => setState(() => _currentIndex = 1),
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
                  isSelected: _currentIndex == 2,
                  onTap: () => setState(() => _currentIndex = 2),
                ),
                NavBarItem(
                  selectedSvg: AppAssets.settingFilled,
                  unselectedSvg: AppAssets.setting,
                  label: 'Settings',
                  isSelected: _currentIndex == 3,
                  onTap: () => setState(() => _currentIndex = 3),
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

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(child: Text('Setting Screen')),
    );
  }
}
