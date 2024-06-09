import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';

class PrimaryLoader extends StatelessWidget {
  final double size;
  final Color color;

  const PrimaryLoader({
    super.key,
    this.size = 50,
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.threeArchedCircle(
      size: size,
      color: color,
    );
  }
}
