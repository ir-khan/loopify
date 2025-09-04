import 'package:flutter/material.dart';
import 'package:loopify/core/assets/app_assets.dart';
import 'package:loopify/features/dashboard/data/data.dart';
import 'package:loopify/features/dashboard/presentation/widgets/nav_bar_item.dart';
import 'package:loopify/features/listing/presentation/screens/create_listing_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: dashboardScreen[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateListingScreen()),
          );
        },
        elevation: 0,
        backgroundColor: Color(0xFFF3F4F6),
        shape: CircleBorder(),
        child: Container(
          width: 32,
          height: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF32B780),
          ),
          child: Icon(Icons.add_rounded, color: Colors.white, size: 22),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          CircleBorder(),
        ),
        color: Color(0xFFF3F4F6),
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
                  isSelected: currentIndex == 0,
                  onTap: () => setState(() => currentIndex = 0),
                ),
                NavBarItem(
                  selectedSvg: AppAssets.layoutFilled,
                  unselectedSvg: AppAssets.layout,
                  label: 'Categories',
                  isSelected: currentIndex == 1,
                  onTap: () => setState(() => currentIndex = 1),
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
                  isSelected: currentIndex == 2,
                  onTap: () => setState(() => currentIndex = 2),
                ),
                NavBarItem(
                  selectedSvg: AppAssets.settingFilled,
                  unselectedSvg: AppAssets.setting,
                  label: 'Settings',
                  isSelected: currentIndex == 3,
                  onTap: () => setState(() => currentIndex = 3),
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
      backgroundColor: Colors.white,
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
      backgroundColor: Colors.white,
      body: Center(child: Text('Setting Screen')),
    );
  }
}
