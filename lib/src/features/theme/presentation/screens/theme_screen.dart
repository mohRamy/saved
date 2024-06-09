import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/helpers/app_helper/spacing.dart';
import 'package:portfolio/src/core/widgets/widgets.dart';
import 'package:portfolio/src/features/theme/presentation/components/theme_item.dart';
import '../../../../core/constants/app_colors.dart';
import '../controllers/theme_controller.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return Scaffold(
      appBar: CustomAppBar(title: AppTranslationKeys.theme.tr),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 24.w,
        ),
        child: Column(
          children: [
            const ThemeItem(ThemeMode.light),
            verticalSpace(24),
            const ThemeItem(ThemeMode.dark),
          ],
        ),
      ),
    );
  }
}


