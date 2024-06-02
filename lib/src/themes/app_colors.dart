import 'package:flutter/material.dart';

// var colorPrimary = Colors.blueAccent;
// var colorBranch = HexColor("FF34495E");
// var colorDarkPrimary = HexColor("FF14171A");
// var colorDarkBranch = HexColor("FF282828");
// var colorBlack = Colors.black;

// // var colorError = Colors.redAccent;
// var colorAccent = HexColor("FF17c063");
// var colorBottom = HexColor("FF657786");
// var chatBoxOther = HexColor("FF3d3d3f");
// var chatBoxUser = HexColor("FF066162");

// A1B0CA settings

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

Color mC = Colors.grey.shade100;
Color mCL = Colors.white;
Color mCM = Colors.grey.shade200;
Color mCH = Colors.grey.shade400;
Color mCD = Colors.black.withOpacity(0.075);
Color fCD = Colors.grey.shade700;
Color fCL = Colors.grey;

const MaterialColor materialPrimary = MaterialColor(
  0xFF7D50F0,
  {
    50: Color(0xFFDFEDF9),
    100: Color(0xFFD2F4FE),
    200: Color(0xFFA6E5FD),
    300: Color(0xFF79D0FB),
    400: Color(0xFF57B9F7),
    500: Color(0xFF2196F3),
    600: Color(0xFF1874D0),
    700: Color(0xFF1057AE),
    800: Color(0xFF0A3D8C),
    900: Color(0xFF062B74),
  },
);

// const Color primary = Color(0xFF2196F3);
// const Color primary10 = Color(0xFFA6E5FD);
// const Color primary20 = Color(0xFFF1F7FC);

//////////////////////////

Gradient gradient = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    primaryColor,
    primaryColor,
  ],
);

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
