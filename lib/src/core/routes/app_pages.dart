import 'package:get/get.dart';
import 'package:portfolio/src/features/login/index.dart';

part 'app_routes.dart';

class AppNavigator {
  AppNavigator._();

  Map<String, dynamic>? arguments;

  static final List<GetPage> routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginScreen(),
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
