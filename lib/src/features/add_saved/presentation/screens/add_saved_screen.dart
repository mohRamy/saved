import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/widgets/widgets.dart';
import 'package:portfolio/src/features/add_saved/presentation/controllers/add_saved_controller.dart';

import '../../../../core/helpers/app_helper/spacing.dart';

class AddSavedScreen extends GetView<AddSavedController> {
  const AddSavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController descController = TextEditingController();
    TextEditingController reminderDateController = TextEditingController();

    return Scaffold(
      appBar: CustomAppBar(title: AppTranslationKeys.addSaved.tr),
      body: Padding(
          padding: EdgeInsets.all(24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(AppTranslationKeys.addSaved.tr),
              verticalSpace(12),
              GestureDetector(
                onTap: () => controller.selectImages(),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(10.sp),
                  dashPattern: const [10, 4],
                  strokeCap: StrokeCap.round,
                  child: Container(
                    width: double.infinity,
                    height: 150.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder_open,
                          size: 40.sp,
                        ),
                        verticalSpace(15),
                        Text(
                          AppTranslationKeys.selectSavedImages.tr,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpace(24),
              PrimaryText(AppTranslationKeys.desc.tr),
              verticalSpace(12),
              PrimaryTextField(
                textController: descController,
                hintText: AppTranslationKeys.desc.tr,
                prefixIcon: Icon(Icons.description, size: 20.r),
              ),
              verticalSpace(24),
              PrimaryText(AppTranslationKeys.reminderDate.tr),
              verticalSpace(12),
              GetBuilder<AddSavedController>(
                init: AddSavedController(),
                builder: (_) => PrimaryTextField(
                  textController: reminderDateController,
                  ontap: () {
                    DatePicker.showDateTimePicker(
                      context,
                      showTitleActions: true,
                      onConfirm: (date) {
                        controller.changeDateTime(date);
                      },
                      currentTime: DateTime.now(),
                      locale: LocaleType.en,
                    );
                  },
                  readOnly: true,
                  hintText: controller.selectedDate.toString(),
                      // == null
                      // ? AppTranslationKeys.enterReminderDate.tr
                      // : addSavedController.selectedDate.toString(),
                  prefixIcon: Icon(Icons.date_range, size: 20.r),
                ),
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
