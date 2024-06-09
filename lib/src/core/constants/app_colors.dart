import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF7D50F0);
const Color primaryLightColor = Color(0xFFFEECE9);

const Color backgroundColor = Color(0xffe9e9e9);

const Color whiteColor = Color(0xFFfafafa);
const Color purpleColor = Color(0xFF7D50F0);
const Color greenColor = Color(0xFF57CA8C);
const Color greyColor = Color(0xFF9698A9);
const Color dashedLineColor = Color(0xFFDDDDE5);
const Color blackColor = Color(0xFF040303);

const Color blackTextColor = Color(0xFF040303);
const Color greyTextColor = Color(0xFF9698A9);

const Color backgroundColorDark = Color(0xFF303030);

const Color danger = Color(0xFFDB3018);
const Color warning = Color(0xFFDBBD2A);
const Color success = Color(0xFF58A517);

// TRANSPARENT
Color transparent = const Color(0x00ffffff).withOpacity(0.0);
Color transparentRed = const Color(0xffF5484A).withOpacity(.08);
Color transparentYellow = const Color(0xffFFD300).withOpacity(.08);
Color transparentOrange = const Color(0xffF89300).withOpacity(.08);
Color transparentGreen = const Color(0xff1BAC4B).withOpacity(.08);
Color transparentBlue = const Color(0xff246BFD).withOpacity(.08);
Color transparentPurple = const Color(0xff6949FF).withOpacity(.08);
Color transparentBlack = const Color(0xff35383F).withOpacity(.08);

Color mC = Colors.grey.shade100;
Color mCL = Colors.white;
Color mCM = Colors.grey.shade200;
Color mCH = Colors.grey.shade400;
Color mCD = Colors.black.withOpacity(0.075);
Color fCD = Colors.grey.shade700;
Color fCL = Colors.grey;

class AppColors {
  final Color primary;
  final Color background;
  final Color accent;
  final Color disabled;
  final Color error;
  final Color divider;
  final Color header;
  final Color button;
  final Color contentText1;
  final Color contentText2;

  const AppColors({
    required this.header,
    required this.primary,
    required this.background,
    required this.accent,
    required this.disabled,
    required this.error,
    required this.divider,
    required this.button,
    required this.contentText1,
    required this.contentText2,
  });

  factory AppColors.light() {
    return AppColors(
      header: backgroundColorDark,
      primary: primaryColor,
      background: mC,
      accent: danger,
      disabled: Colors.black12,
      error: danger,
      divider: Colors.black26,
      button: greenColor,
      contentText1: blackColor,
      contentText2: fCL,
    );
  }

  factory AppColors.dark() {
    return AppColors(
      header: mCL,
      primary: primaryColor,
      background: backgroundColorDark,
      accent: danger,
      disabled: Colors.white12,
      error: danger,
      divider: Colors.white24,
      button: mCL,
      contentText1: mCL,
      contentText2: fCL,
    );
  }
}