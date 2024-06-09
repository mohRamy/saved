import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';
import 'package:portfolio/src/features/theme/presentation/controllers/theme_controller.dart';

class ThemeItem extends GetView<ThemeController> {
  const ThemeItem(this.theme, {super.key});
  final ThemeMode theme;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) {
        bool isSelected = controller.selectedTheme == theme;
        return InkWell(
          onTap: () {
            controller.toggleTheme(theme);
            controller.changeTheme();
          },
          borderRadius: BorderRadius.circular(16.r),
          child: Ink(
            height: 100.h,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: isSelected ? primaryColor : backgroundColor,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  theme == ThemeMode.light ? Icons.sunny : Icons.dark_mode,
                  color:
                  theme == ThemeMode.light ? Colors.orange : Colors.black,
                ),
                SizedBox(width: 16.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${theme.name} Mode',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 14.sp),
                    ),
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 16.r,
                  backgroundColor: isSelected ? primaryColor : backgroundColor,
                  child: Icon(
                    Icons.check,
                    size: 12.r,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}