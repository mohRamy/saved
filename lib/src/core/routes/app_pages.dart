import 'package:get/get.dart';
import 'package:portfolio/src/features/add_saved/presentation/screens/add_saved_screen.dart';
import 'package:portfolio/src/features/image_details/presentation/screens/image_details.dart';
import 'package:portfolio/src/features/layout/app_layout.dart';
import 'package:portfolio/src/features/login/index.dart';
import 'package:portfolio/src/features/register/index.dart';
import 'package:portfolio/src/features/change_password/presentation/screens/change_password_screen.dart';
import 'package:portfolio/src/features/language/presentation/screens/language_screen.dart';
import 'package:portfolio/src/features/personal_info/presentation/screens/personal_info_screen.dart';
import 'package:portfolio/src/features/theme/presentation/screens/theme_screen.dart';

part 'app_routes.dart';

class AppNavigator {
  AppNavigator._();

  Map<String, dynamic>? arguments;

  static final List<GetPage> routes = [
    GetPage(
      name: _Paths.layout,
      page: () => const AppLayout(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.register,
      page: () => const RegisterScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.addSaved,
      page: () => const AddSavedScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.imageDetails,
      page: () => const ImageDetailsScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.personalInfo,
      page: () => const PersonalInfoScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.changePassword,
      page: () => const ChangePasswordScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.language,
      page: () => const LanguageScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.theme,
      page: () => const ThemeScreen(),
      transition: Transition.fadeIn,
    ),
  ];

  static push<T>(
    String route, {
    Object? arguments,
  }) {
    return Get.toNamed(route, arguments: arguments);
  }

  static replaceWith<T>(
    String route, {
    Map<String, dynamic>? arguments,
  }) {
    return Get.offAndToNamed(route, arguments: arguments);
  }

  static void popUntil<T>(String route) => 
  Get.offNamedUntil(route, (route) => false);

  static void pop() {
    Get.back();
  }
}
