import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/dialogs/dialog_loading.dart';
import 'package:portfolio/src/core/helpers/app_helper/spacing.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../config/application.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/dialogs/dialog_confirm.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../../core/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Setting> settingItems = [
      Setting(
        title: AppTranslationKeys.personalInfo.tr,
        icon: Icons.person,
        borderColor: transparentRed,
        callback: () => AppNavigator.push(AppRoutes.personalInfo),
      ),
      Setting(
        title: AppTranslationKeys.changePassword.tr,
        icon: Icons.lock,
        borderColor: transparentOrange,
        callback: () => AppNavigator.push(AppRoutes.changePassword),
      ),
      Setting(
        title: AppTranslationKeys.language.tr,
        icon: Icons.language,
        borderColor: transparentBlue,
        callback: () => AppNavigator.push(AppRoutes.language),
      ),
      Setting(
        title: AppTranslationKeys.theme.tr,
        icon: Icons.dark_mode,
        borderColor: transparentPurple,
        callback: () => AppNavigator.push(AppRoutes.theme),
      ),
      Setting(
        title: AppTranslationKeys.shareApp.tr,
        icon: Icons.share,
        borderColor: transparentGreen,
        callback: () async {
          await launchUrl(
            Uri.parse(Application.baseUrl),
            mode: LaunchMode.externalApplication,
          );
        },
      ),
      Setting(
        title: AppTranslationKeys.logout.tr,
        icon: Icons.logout,
        borderColor: transparentRed,
        callback: () {
          dialogAnimationWrapper(
            dismissible: false,
            context: Get.context,
            child: DialogConfirm(
              handleConfirm: () => AppNavigator.popUntil(AppRoutes.login),
              title: AppTranslationKeys.logout.tr,
              subTitle: AppTranslationKeys.youSureLogout.tr,
            ),
          );
        },
      ),
    ];
    return Scaffold(
      appBar: CustomAppBar(
        title: AppTranslationKeys.settings.tr,
        hasLeading: false,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => SettingItem(
          profile: settingItems[index],
        ),
        itemCount: settingItems.length,
        padding: EdgeInsets.symmetric(vertical: 24.h),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({required this.profile, super.key});
  final Setting profile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: profile.callback,
      child: Container(
        height: 75.h,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(
          children: [
            CircleAvatar(
              radius: 26.r,
              backgroundColor: profile.borderColor,
              child: Icon(profile.icon, size: 16.r),
            ),
            horizontalSpace(20),
            Text(
              profile.title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class Setting {
  final IconData icon;
  final String title;
  final Color borderColor;
  final VoidCallback callback;

  Setting({
    required this.icon,
    required this.title,
    required this.borderColor,
    required this.callback,
  });
}
