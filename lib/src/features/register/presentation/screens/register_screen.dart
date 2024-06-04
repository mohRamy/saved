import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/helpers/app_helper/app_spacing.dart';
import 'package:portfolio/src/core/routes/app_pages.dart';
import 'package:portfolio/src/core/widgets/primary_button.dart';
import 'package:portfolio/src/features/register/index.dart';
import 'package:portfolio/src/themes/app_colors.dart';

import '../../../../core/widgets/widgets.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: GetBuilder<RegisterController>(builder: (registerController) {
          return HandleStatesWidget(
            stateType: registerController.getRegisterState,
            child: Column(
              children: [
                verticalSpace(30),
                // buildProfileImage(),
                verticalSpace(30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Column(
                    children: [
                      //name
                      AppTextField(
                        textController: controller.nameRC,
                        hintText: 'name',
                        prefixIcon: const Icon(Icons.person),
                      ),
                      verticalSpace(10),
                      //email
                      AppTextField(
                        keyboardType: TextInputType.emailAddress,
                        textController: controller.emailRC,
                        hintText: 'email',
                        prefixIcon: const Icon(Icons.email),
                      ),
                      verticalSpace(10),
                      //password
                      GetBuilder<RegisterController>(
                          builder: (registerController) {
                        return AppTextField(
                          textController: controller.passwordRC,
                          hintText: 'password',
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
                    ],
                  ),
                ),
                verticalSpace(20.sp),
                GetBuilder<RegisterController>(builder: (registerController) {
                  return PrimaryButton(
                    txt: 'register',
                    onTap: () {},
                  );
                }),
                verticalSpace(10.sp),
                //tag line
                RichText(
                  text: TextSpan(
                    text: 'Have an account already ',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: fCL),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => AppNavigator.replaceWith(AppRoutes.LOGIN),
                        text: 'Login',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: primaryColor),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: SizerUtil.height * 0.05,
                // ),
                //sign up options
                RichText(
                  text: TextSpan(
                    text: 'Sign up using one of the following methods',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: fCL),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
