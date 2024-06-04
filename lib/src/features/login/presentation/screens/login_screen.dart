import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/helpers/app_helper/app_spacing.dart';
import 'package:portfolio/src/core/routes/app_pages.dart';
import 'package:portfolio/src/themes/app_colors.dart';

import '../../../../core/widgets/widgets.dart';
import '../controllers/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: GetBuilder<LoginController>(
        builder: (loginController) {
          return HandleStatesWidget(
            stateType: loginController.getLoginState,
            child: Column(
              children: [
                // SizedBox(
                //   height: SizerUtil.height * 0.05,
                // ),
                //app logo
                SizedBox(
                  height: 120.sp,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: primaryColor,
                      radius: 50.sp,
                      // child: Image.asset(AppConstants.LOGO64_ASSET),
                    ),
                  ),
                ),
                verticalSpace(30),
                //welcome
                Container(
                  margin: EdgeInsets.only(left: 20.sp),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        // loginHello.i18n,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        "Welcom we are happy to have you back",
                        // loginDis.i18n,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: fCL),
                      ),
                    ],
                  ),
                ),
                verticalSpace(40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: //phone
                      AppTextField(
                    keyboardType: TextInputType.number,
                    textController: controller.emailLC,
                    hintText: 'phone',
                    prefixIcon: const Icon(Icons.phone),
                  ),
                ),
                verticalSpace(10),
                //password
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: GetBuilder<LoginController>(builder: (loginController) {
                    return AppTextField(
                      textController: controller.passwordLC,
                      hintText: 'password',
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
                  }),
                ),
                verticalSpace(20),
                //tag line
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    // RichText(
                    //   text: TextSpan(
                    //     text: loginAccount.i18n,
                    //     style: Theme.of(context)
                    //         .textTheme
                    //         .titleLarge!
                    //         .copyWith(color: fCL),
                    //   ),
                    // ),
                    horizontalSpace(20),
                  ],
                ),
                verticalSpace(60),
                // AppTextButton(
                //   txt: 'Login',
                //   onTap: () {
                //     _login(authController);
                //   },
                // ),
                // SizedBox(
                //   height: SizerUtil.height * 0.05,
                // ),
                //tag line
                RichText(
                  text: TextSpan(
                    text: 'Don\'t an account? ',
                    style:
                        Theme.of(context).textTheme.titleLarge!.copyWith(color: fCL),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => AppNavigator.push(AppRoutes.REGISTER),
                        text: 'Register',
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
              ],
            ),
          );
        }
      ),
    ));
  }
}
