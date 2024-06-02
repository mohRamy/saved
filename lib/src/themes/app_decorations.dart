import 'dart:io';

import 'package:flutter/material.dart';

import '../utils/sizer_custom/sizer.dart';
import 'app_colors.dart';

class AppDecoration {
  final BoxDecoration decoration;
  AppDecoration({required this.decoration});
  factory AppDecoration.displayFile(context, File file) {
      return AppDecoration(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.2),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: FileImage(
              file,
            ),
          ),
        ),
      );
  }

  factory AppDecoration.displayImageVideo(context) {
      return AppDecoration(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.2),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      );
  }

  factory AppDecoration.smallContainer(
    context,
    bool isReplyButtonPressed,
    {
      bool showMessageReply = false,
    }
  ) {
    return AppDecoration(
      decoration: BoxDecoration(
        borderRadius: !showMessageReply
            ? BorderRadius.circular(
                isReplyButtonPressed ? 12.0 : 20.0,
              )
            : const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 7),
          ),
        ],
        gradient: const LinearGradient(
          colors: [primaryColor, greenColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  factory AppDecoration.smallContainerContent(
    context,
    bool isReplyButtonPressed,
    {
      bool showMessageReply = false,
    }
  ) {
    return AppDecoration(
      decoration: BoxDecoration(
        color: mCL,
        borderRadius: !showMessageReply
            ? BorderRadius.circular(
                isReplyButtonPressed ? 12.0 : 20.0,
              )
            : const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
      ),
    );
  }

  factory AppDecoration.textField(context, radius) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppDecoration(
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
      );
    } else {
      return AppDecoration(
        decoration: BoxDecoration(
          color: mCL,
          borderRadius: BorderRadius.circular(
            radius,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(1, 1),
              color: primaryColor.withOpacity(0.3),
            ),
          ],
        ),
      );
    }
  }

  factory AppDecoration.textfeild(
    context,
    radius,
  ) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppDecoration(
        decoration: BoxDecoration(
          color: fCD,
          borderRadius: BorderRadius.circular(radius),
        ),
      );
    } else {
      return AppDecoration(
        decoration: BoxDecoration(
          color: mCL,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              offset: const Offset(0, 2),
              color: mCH,
            ),
          ],
        ),
      );
    }
  }

  factory AppDecoration.bottomNavigationBar(context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppDecoration(
        decoration: BoxDecoration(
          color: fCD,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.sp),
            topRight: Radius.circular(45.sp),
          ),
        ),
      );
    } else {
      return AppDecoration(
        decoration: BoxDecoration(
          color: mCD,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.sp),
            topRight: Radius.circular(45.sp),
          ),
        ),
      );
    }
  }
}
