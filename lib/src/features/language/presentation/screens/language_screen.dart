import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/widgets/widgets.dart';

import '../components/language_item.dart';
import '../controllers/localization_controller.dart';

class LanguageScreen extends GetView<LocalizationController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(LocalizationController(sharedPreferencesService));
    return Scaffold(
      appBar: CustomAppBar(title: AppTranslationKeys.language.tr),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          children: List.generate(controller.languages.length, (index) {
            final language = controller.languages[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: GetBuilder<LocalizationController>(
                builder: (controller) => LanguageItem(
                  language: language,
                  isSelected: controller.selectedIndex == index,
                  onTap: () {
                    controller.setLanguage(
                        Locale(language.languageCode, language.countryCode));
                    controller.setSelectIndex(index);
                  },
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
