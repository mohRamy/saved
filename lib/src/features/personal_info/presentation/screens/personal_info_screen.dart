import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/helpers/app_helper/spacing.dart';
import 'package:portfolio/src/core/widgets/widgets.dart';

import '../components/personal_info_item.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppTranslationKeys.personalInfo.tr),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            verticalSpace(48),
            PersonalInfoItem(title: AppTranslationKeys.name.tr, value: AppTranslationKeys.userName.tr),
            verticalSpace(24),
            PersonalInfoItem(title: AppTranslationKeys.email.tr, value: 'UserName@gmail.com'),
          ],
        ),
      ),
    );
  }
}
