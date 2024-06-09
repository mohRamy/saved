import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// enum ThemeOptions { light, dark }
//
// class ThemeController {
//   static ThemeOptions themeOptions = ThemeOptions.light;
//   static ThemeMode currentTheme = ThemeMode.light;
//   static final systemBrightness = SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//   );
//
//   final _getStorage = GetStorage();
//   final storageKey = 'theme';
//
//   void _writeBox(bool istheme) => _getStorage.write(storageKey, istheme);
//
//   bool _readBox() => _getStorage.read<bool>(storageKey) ?? false;
//
//   ThemeMode get theme => _readBox() ? ThemeMode.dark : ThemeMode.light;
//
//   void changeTheme() {
//     Get.changeThemeMode(_readBox() ? ThemeMode.light : ThemeMode.dark;
//     _writeBox(!_readBox());
//     print(currentTheme);
//   }
// }
//
// ThemeController themeController = ThemeController();

class ThemeController extends GetxController {
  static ThemeOptions themeOptions = ThemeOptions.light;
  static Rx<ThemeMode> currentTheme = ThemeMode.light.obs;
  static final systemBrightness = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  );

  final _getStorage = GetStorage();
  final storageKey = 'theme';

  void _writeBox(bool isTheme) => _getStorage.write(storageKey, isTheme);

  bool _readBox() => _getStorage.read<bool>(storageKey) ?? false;

  ThemeMode get theme => _readBox() ? ThemeMode.dark : ThemeMode.light;

  // ThemeController() {
  //   theme = _readBox() ? ThemeMode.dark : ThemeMode.light;
  //   currentTheme.value = theme;
  // }

  ThemeMode selectedTheme = ThemeMode.light;

  toggleTheme(ThemeMode theme) {
    selectedTheme = theme;
    update();
  }

  void changeTheme() {
    Get.changeThemeMode(_readBox() ? ThemeMode.light : ThemeMode.dark);
    _writeBox(!_readBox());
    // bool isDarkMode = _readBox();
    // ThemeMode newTheme = isDarkMode ? ThemeMode.light : ThemeMode.dark;
    // Get.changeThemeMode(newTheme);
    // _writeBox(!isDarkMode);
    // theme.value = newTheme;
    // currentTheme.value = newTheme;
  }
}

enum ThemeOptions { light, dark }

ThemeController themeController = ThemeController();
