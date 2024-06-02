import 'package:flutter/material.dart';

class SlideFromTopRoute extends PageRouteBuilder {
  final Widget? page;
  final Duration duration;
  final RouteSettings setting;
  SlideFromTopRoute(
      {required this.setting,
      this.page,
      this.duration = const Duration(milliseconds: 200)})
      : super(
          settings: setting,
          transitionDuration: duration,
          reverseTransitionDuration: duration,
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, -1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
