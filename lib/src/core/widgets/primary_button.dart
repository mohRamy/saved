import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/themes/font_family.dart';
import '../../themes/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String txt;
  final Function() onTap;
  final Color backgroundColor;
  final double borderRadius;
  const PrimaryButton({
    super.key,
    required this.txt,
    required this.onTap,
    this.backgroundColor = const Color(0xFF89DAD0),
    this.borderRadius = 40,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
        padding: EdgeInsets.all(10.sp),
      ),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 18.sp,
          color: mCL,
          fontFamily: FontFamily.lato,
        ),
      ),
    );
  }
}
