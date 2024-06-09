import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_assets.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/helpers/app_helper/spacing.dart';
import 'package:portfolio/src/core/routes/app_pages.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/widgets.dart';
import '../controllers/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailLC = TextEditingController();
    TextEditingController passwordLC = TextEditingController();
    Get.put(LoginController());
    return Scaffold(
      body: HandleStatesWidget(
            stateType: controller.getLoginState,
            child: Padding(
              padding: EdgeInsets.all(24.h),
              child: Column(
                children: [
                  verticalSpace(30),
                  SizedBox(
                    height: 120.sp,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 70.sp,
                        // child: Image.asset(AppAssets.english),
                      ),
                    ),
                  ),
                  verticalSpace(30),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppTranslationKeys.hello.tr,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          AppTranslationKeys.welcomYouBack.tr,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: fCL),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(40),
                  PrimaryTextField(
                    keyboardType: TextInputType.number,
                    textController: emailLC,
                    hintText: AppTranslationKeys.email.tr,
                    prefixIcon: const Icon(Icons.phone),
                  ),
                  verticalSpace(24),
                  GetBuilder<LoginController>(
                    builder: (loginController) {
                      return PrimaryTextField(
                        textController: passwordLC,
                        hintText: AppTranslationKeys.password.tr,
                        isObscure: loginController.isObscure,
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: InkWell(
                          onTap: () {
                            loginController.changeObsure();
                          },
                          child: Icon(
                            loginController.isObscure
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: primaryColor,
                          ),
                        ),
                      );
                    },
                  ),
                  verticalSpace(60),
                  GetBuilder<LoginController>(builder: (loginController) {
                    return PrimaryButton(
                      txt: AppTranslationKeys.login.tr,
                      onTap: () => AppNavigator.push(AppRoutes.layout),
                    );
                  }),
                  verticalSpace(30),
                  RichText(
                    text: TextSpan(
                      text: AppTranslationKeys.dontAccount.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: fCL),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => AppNavigator.push(AppRoutes.register),
                            text: " ${AppTranslationKeys.register.tr}",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
