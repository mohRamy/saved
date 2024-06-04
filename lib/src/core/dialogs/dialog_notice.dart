import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/app_colors.dart';
import '../helpers/app_helper/app_spacing.dart';

class DialogNotice extends StatelessWidget {
  final String title;
  final String subTitle;

  const DialogNotice({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.sp,
      height: 155.sp,
      padding: EdgeInsets.symmetric(vertical: 16.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          verticalSpace(6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.sp),
            ),
          ),
          verticalSpace(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 7.5.sp),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.5.sp),
            ),
          ),
          verticalSpace(8),
          const Divider(),
          GestureDetector(
            onTap: () {
              // AppNavigator.pop();
            },
            child: Container(
              color: Colors.transparent,
              width: 300.sp,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 5.sp),
              child: Text(
                'OK',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: primaryColor,
                ),
              ),
            ),
          ),
          const Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
