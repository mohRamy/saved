import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/dialogs/dialog_confirm.dart';
import 'package:portfolio/src/core/routes/app_pages.dart';
import 'package:portfolio/src/features/settings/presentation/screens/settings_screen.dart';
import '../../core/constants/app_colors.dart';
import '../home/presentation/screens/home_screen.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: AppTranslationKeys.home.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: AppTranslationKeys.profile.tr,
          ),
        ],
        backgroundColor: whiteColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: greyTextColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> AppNavigator.push(AppRoutes.addSaved),
        // onPressed: () {
        //   DialogConfirm(
        //     handleConfirm: () {},
        //     subTitle: AppTranslationKeys.chooseImageFromYourSource.tr,
        //     title: AppTranslationKeys.chooseImage.tr,
        //   );
        // },
        shape: const CircleBorder(),
        backgroundColor: primaryColor,
        child: const Icon(Icons.camera_alt, color: whiteColor),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
