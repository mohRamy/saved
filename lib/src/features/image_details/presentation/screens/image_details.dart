import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/helpers/app_helper/spacing.dart';

import '../../../../core/widgets/widgets.dart';

class ImageDetailsScreen extends StatelessWidget {
  const ImageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppTranslationKeys.details.tr),
      body: Padding(
        padding: EdgeInsets.all(24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.sh / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDVs9EP1bwcEg8MmfIl0S_gaCRvww7TaOrIw&s',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            verticalSpace(50),
            PrimaryText(AppTranslationKeys.desc.tr),
            verticalSpace(6),
            PrimaryText(
              AppTranslationKeys.hereMyDesc.tr,
              type: TextType.bodySmall,
            ),
            Divider(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    PrimaryText(AppTranslationKeys.saveDate.tr),
                    verticalSpace(6),
                    const PrimaryText(
                      '7/6/2047',
                      type: TextType.bodySmall,
                    ),
                  ],
                ),
                Column(
                  children: [
                    PrimaryText(AppTranslationKeys.reminderDate.tr),
                    verticalSpace(6),
                    const PrimaryText(
                      '14/6/2047',
                      type: TextType.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
