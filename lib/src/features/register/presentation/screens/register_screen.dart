import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_assets.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/helpers/app_helper/spacing.dart';
import 'package:portfolio/src/core/routes/app_pages.dart';
import 'package:portfolio/src/features/register/index.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/widgets.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameRC = TextEditingController();
    TextEditingController emailRC = TextEditingController();
    TextEditingController passwordRC = TextEditingController();
    Widget buildProfileImage() =>
        GestureDetector(
            onTap: (){},
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 70.sp,
                  backgroundColor: mCL,
                  child: CircleAvatar(
                    radius: 68.sp,
                    backgroundColor: fCD,
                    backgroundImage: const AssetImage(
                      AppAssets.english,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: CircleAvatar(
                    radius: 20.sp,
                    backgroundColor: mCL,
                    child: CircleAvatar(
                      radius: 18.sp,
                      backgroundColor: mCH,
                      child: const Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ],
            ),
          );
    Get.put(RegisterController());
    return Scaffold(
      body: HandleStatesWidget(
            stateType: controller.getRegisterState,
            child: Padding(
              padding: EdgeInsets.all(24.h),
              child: Column(
                children: [
                  verticalSpace(30),
                  buildProfileImage(),
                  verticalSpace(40),
                  PrimaryTextField(
                    textController: nameRC,
                    hintText: AppTranslationKeys.name.tr,
                    prefixIcon: const Icon(Icons.person),
                  ),
                  verticalSpace(24),
                  PrimaryTextField(
                    keyboardType: TextInputType.emailAddress,
                    textController: emailRC,
                    hintText: 'UserName@gmail.com',
                    prefixIcon: const Icon(Icons.email),
                  ),
                  verticalSpace(24),
                  GetBuilder<RegisterController>(builder: (registerController) {
                    return PrimaryTextField(
                      textController: passwordRC,
                      hintText: AppTranslationKeys.password.tr,
                      prefixIcon: const Icon(Icons.password),
                      isObscure: registerController.isObscure,
                      suffixIcon: InkWell(
                        onTap: () {
                          registerController.changeObsure();
                        },
                        child: Icon(
                          registerController.isObscure
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: primaryColor,
                        ),
                      ),
                    );
                  }),
                  verticalSpace(60),
                  GetBuilder<RegisterController>(builder: (registerController) {
                    return PrimaryButton(
                      txt: AppTranslationKeys.register.tr,
                      onTap: () {},
                    );
                  }),
                  verticalSpace(30),
                  RichText(
                    text: TextSpan(
                      text: AppTranslationKeys.haveAccountAlready.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: fCL),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => AppNavigator.replaceWith(AppRoutes.login),
                          text: " ${AppTranslationKeys.login.tr}",
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
