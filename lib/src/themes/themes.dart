import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'font_family.dart';
import 'font_weight_helper.dart';

const TextStyle lightText = TextStyle(
  color: Color.fromRGBO(4, 3, 3, 1),
);

const TextStyle blackTextStyle = TextStyle(
  color: blackTextColor,
);

const TextStyle whiteTextStyle = TextStyle(
  color: whiteColor,
);

const TextStyle greyTextStyle = TextStyle(
  color: greyTextColor,
);

// FontWeight light = FontWeight.w300;
// FontWeight regular = FontWeight.w400;
// FontWeight medium = FontWeight.w500;
// FontWeight semiBold = FontWeight.w600;
// FontWeight bold = FontWeight.w700;
// FontWeight extraBold = FontWeight.w800;
// FontWeight black = FontWeight.w900;

class AppTheme {
  AppTheme({
    required this.mode,
    required this.data,
    required this.appColors,
  });

  factory AppTheme.light() {
    const mode = ThemeMode.light;
    final appColors = AppColors.light();
    final themeData = ThemeData.light().copyWith(
      primaryColor: appColors.primary,
      scaffoldBackgroundColor: appColors.background,
      snackBarTheme: SnackBarThemeData(
        backgroundColor: appColors.error,
        behavior: SnackBarBehavior.floating,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: appColors.background,
        elevation: 0.4,
        shape: const RoundedRectangleBorder(),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        // appColors.background,
        selectedItemColor: primaryColor,
        unselectedItemColor: greenColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: appColors.background,
        elevation: 0.0,
      ),
      iconTheme: IconThemeData(
        color: appColors.header,
        size: 20.sp,
      ),
      textTheme: TextTheme(
        displayMedium: TextStyle(
          color: appColors.header,
          fontWeight: FontWeight.w500,
          fontSize: 30.sp,
        ),
        titleLarge: TextStyle(
          color: appColors.contentText1,
          fontWeight: FontWeightHelper.regular,
          fontSize: 14.sp,
          fontFamily: FontFamily.lato,
        ),
        titleMedium: TextStyle(
          color: appColors.contentText1,
          fontWeight: FontWeightHelper.bold,
          fontSize: 12.sp,
          fontFamily: FontFamily.lato,
        ),
        titleSmall: TextStyle(
          color: appColors.contentText1,
          fontWeight: FontWeightHelper.regular,
          fontSize: 12.sp,
          fontFamily: FontFamily.lato,
        ),
        bodyLarge: TextStyle(
          color: appColors.contentText2,
          fontWeight: FontWeightHelper.regular,
          fontSize: 14.sp,
          fontFamily: FontFamily.lato,
        ),
        bodyMedium: TextStyle(
          color: appColors.contentText2,
          fontWeight: FontWeightHelper.bold,
          fontSize: 12.sp,
          fontFamily: FontFamily.lato,
        ),
        bodySmall: TextStyle(
          color: appColors.contentText2,
          fontWeight: FontWeightHelper.regular,
          fontSize: 12.sp,
          fontFamily: FontFamily.lato,
        ),
      ),
      dividerColor: appColors.divider,
    );
    return AppTheme(
      mode: mode,
      data: themeData,
      appColors: appColors,
    );
  }

  factory AppTheme.dark() {
    const mode = ThemeMode.dark;
    final appColors = AppColors.dark();
    final themeData = ThemeData.dark().copyWith(
      primaryColor: appColors.primary,
      scaffoldBackgroundColor: appColors.background,
      snackBarTheme: SnackBarThemeData(
        backgroundColor: appColors.error,
        behavior: SnackBarBehavior.floating,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: appColors.background,
        elevation: 0.4,
        shape: const RoundedRectangleBorder(),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: primaryColor,
        unselectedItemColor: greenColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: appColors.background,
        elevation: 0.0,
        // systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      iconTheme: IconThemeData(
        color: appColors.header,
        size: 20.sp,
      ),
      textTheme: TextTheme(
        displayMedium: TextStyle(
          color: appColors.header,
          fontWeight: FontWeight.w500,
          fontSize: 30.sp,
        ),
        titleLarge: TextStyle(
          color: appColors.contentText1,
          fontWeight: FontWeightHelper.regular,
          fontSize: 14.sp,
          fontFamily: FontFamily.lato,
        ),
        titleMedium: TextStyle(
          color: appColors.contentText1,
          fontWeight: FontWeightHelper.bold,
          fontSize: 12.sp,
          fontFamily: FontFamily.lato,
        ),
        titleSmall: TextStyle(
          color: appColors.contentText1,
          fontWeight: FontWeightHelper.regular,
          fontSize: 12.sp,
          fontFamily: FontFamily.lato,
        ),
        bodyLarge: TextStyle(
          color: appColors.contentText2,
          fontWeight: FontWeightHelper.regular,
          fontSize: 14.sp,
          fontFamily: FontFamily.lato,
        ),
        bodyMedium: TextStyle(
          color: appColors.contentText2,
          fontWeight: FontWeightHelper.bold,
          fontSize: 12.sp,
          fontFamily: FontFamily.lato,
        ),
        bodySmall: TextStyle(
          color: appColors.contentText2,
          fontWeight: FontWeightHelper.regular,
          fontSize: 12.sp,
          fontFamily: FontFamily.lato,
        ),
      ),
      dividerColor: appColors.divider,
    );
    return AppTheme(
      mode: mode,
      data: themeData,
      appColors: appColors,
    );
  }

  final ThemeMode mode;
  final ThemeData data;
  final AppColors appColors;
}
