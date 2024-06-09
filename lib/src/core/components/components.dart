import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../constants/app_colors.dart';
import '../helpers/app_helper/spacing.dart';

import '../widgets/widgets.dart';

class Components {
  static void showLoading([String? message]) {
    Get.dialog(
      const Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  //hide loading
  static void hideLoading() {
    if (Get.isDialogOpen!) Get.back();
  }

  static InkWell buildbottomsheet({
    required Icon icon,
    required String label,
    required Function() ontap,
  }) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10.h),
        height: 45.h,
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: mCM,
              child: icon,
            ),
            horizontalSpace(10),
            PrimaryText(label),
          ],
        ),
      ),
    );
  }

  static void showSnackBar(
    String message, {
    String title = 'Error',
    Color color = Colors.redAccent,
    SnackPosition snackPosition = SnackPosition.TOP,
  }) {
    Get.snackbar(
      title,
      message,
      titleText: PrimaryText(
        title,
      ),
      messageText: PrimaryText(
        message,
      ),
      colorText: mCL,
      snackPosition: snackPosition,
      backgroundColor: color,
    );
  }
}
