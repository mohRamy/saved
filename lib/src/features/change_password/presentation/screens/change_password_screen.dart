import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/helpers/app_helper/spacing.dart';
import '../../../../core/widgets/widgets.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppTranslationKeys.changePassword.tr),
      body: Padding(
        padding: EdgeInsets.all(24.h),
        child: Column(
          children: [
            PrimaryTextField(
              textController: currentPasswordController,
              hintText: AppTranslationKeys.enterOldPass.tr,
              prefixIcon: Icon(Icons.lock,size: 20.r),
            ),
            verticalSpace(24),
            PrimaryTextField(
              textController: newPasswordController,
              hintText: AppTranslationKeys.enterNewPass.tr,
              prefixIcon: Icon(Icons.lock,size: 20.r),
            ),
            verticalSpace(24),
            PrimaryTextField(
              textController: confirmPasswordController,
              hintText: AppTranslationKeys.confirmNewPass.tr,
              prefixIcon: Icon(Icons.lock,size: 20.r),
            ),
            verticalSpace(48),
            PrimaryButton(
              txt: AppTranslationKeys.submit.tr,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
