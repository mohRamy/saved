import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../constants/app_api_error.dart';

import '../../themes/app_colors.dart';

class EasyLoaderService extends GetxService {
  @override
  void onInit() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.light
      ..indicatorSize = 45
      ..maskType = EasyLoadingMaskType.black
      ..radius = 15;
    super.onInit();
  }

  static showLoading() {
    EasyLoading.instance.userInteractions = false;

    EasyLoading.show(
      status: ApiErrors.waiting.tr,
      dismissOnTap: false,
    );
  }

  static showError({
    required String message,
    int durationSeconds = 3,
  }) {
    EasyLoading.instance
      ..userInteractions = true
      ..displayDuration = Duration(seconds: durationSeconds)
      ..errorWidget = const Icon(
        Icons.error_outline_rounded,
        size: 45,
      );

    EasyLoading.showError(
      message,
      dismissOnTap: true,
    );
  }

  static showOfflineError() {
    EasyLoading.instance
      ..userInteractions = true
      ..displayDuration = const Duration(seconds: 3)
      ..errorWidget = const Icon(
        Icons.wifi_off_rounded,
        size: 45,
      );

    EasyLoading.showError(
      ApiErrors.offline.tr,
      dismissOnTap: true,
    );
  }

  static showInternalServerError({
    EasyLoadingMaskType maskType = EasyLoadingMaskType.black,
  }) {
    EasyLoading.instance
      ..userInteractions = true
      ..displayDuration = const Duration(seconds: 3)
      ..errorWidget = const Icon(
        Icons.report_problem_outlined,
        size: 45,
      );

    EasyLoading.showError(
      ApiErrors.internalServerError.tr,
      maskType: maskType,
      dismissOnTap: true,
    );
  }

  static showSuccess({
    EasyLoadingMaskType maskType = EasyLoadingMaskType.black,
  }) {
    EasyLoading.instance
      ..userInteractions = true
      ..displayDuration = const Duration(seconds: 3)
      ..successWidget = Icon(
        Icons.check,
        color: success,
        size: 45,
      );
    EasyLoading.showSuccess(
      ApiErrors.success.tr,
      maskType: maskType,
      dismissOnTap: true,
    );
  }

  static dismiss() {
    EasyLoading.dismiss(animation: true);
  }

  static showToast({required String message}) {
    EasyLoading.instance
      ..userInteractions = true
      ..displayDuration = const Duration(seconds: 3);
    EasyLoading.showToast(
      message,
      dismissOnTap: true,
      maskType: EasyLoadingMaskType.clear,
      toastPosition: EasyLoadingToastPosition.bottom,
    );
  }
}
