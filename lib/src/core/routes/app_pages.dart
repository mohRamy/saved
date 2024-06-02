import 'package:flutter/material.dart';
import '../enums/slide_enum.dart';

import 'scaffold_wrapper.dart';
import 'slides/slide_from_bottom_route.dart';
import 'slides/slide_from_left_route.dart';
import 'slides/slide_from_right_route.dart';
import 'slides/slide_from_top_route.dart';

part 'app_routes.dart';

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  SlideEnum defautlSlide = SlideEnum.right;
  Route<dynamic> getRoute(RouteSettings settings) {
    Map<String, dynamic>? arguments = _getArguments(settings);
    switch (settings.name) {

      default:
        return _buildRoute(settings, const Scaffold(), SlideEnum.right);
    }
  }

  _buildRoute(
    RouteSettings routeSettings,
    Widget builder,
    SlideEnum slideEnum,
  ) {
    switch (slideEnum) {
      case SlideEnum.bot:
        return SlideFromBottomRoute(
            page: ScaffoldWrapper(child: builder), setting: routeSettings);
      case SlideEnum.top:
        return SlideFromTopRoute(
            page: ScaffoldWrapper(child: builder), setting: routeSettings);
      case SlideEnum.left:
        return SlideFromLeftRoute(
            page: ScaffoldWrapper(child: builder), setting: routeSettings);
      case SlideEnum.right:
        return SlideFromRightRoute(
            page: ScaffoldWrapper(child: builder), setting: routeSettings);
    }
  }

  _getArguments(RouteSettings settings) {
    return settings.arguments;
  }

  _getSlideMode(Map<String, dynamic>? arguments) {
    if (arguments == null) {
      return SlideEnum.right;
    } else {
      return arguments['slide'] ?? SlideEnum.right;
    }
  }

  static Future push<T>(
    String route, {
    Object? arguments,
  }) {
    return state.pushNamed(route, arguments: arguments);
  }

  static Future replaceWith<T>(
    String route, {
    Map<String, dynamic>? arguments,
  }) {
    return state.pushReplacementNamed(route, arguments: arguments);
  }

  static void popUntil<T>(String route) =>
      state.popUntil(ModalRoute.withName(route));

  static void pop() {
    if (state.canPop()) {
      state.pop();
    }
  }

  static String currentRoute(context) => ModalRoute.of(context)!.settings.name!;

  static NavigatorState get state => navigatorKey.currentState!;
}
