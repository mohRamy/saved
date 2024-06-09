import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_keys.dart';
import 'package:portfolio/src/features/theme/presentation/controllers/theme_controller.dart';
import 'config/application.dart';
import 'features/language/presentation/controllers/localization_controller.dart';
import '../src/core/routes/app_pages.dart';
import 'core/constants/app_themes.dart';
import 'core/constants/app_translations.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return GetBuilder<LocalizationController>(
          builder: (localizationController) {
            return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                translations: AppTranslations(languages: Application.languages),
                locale: localizationController.locale,
                fallbackLocale: Locale(
                  AppKeys.languages[0].languageCode,
                  AppKeys.languages[0].countryCode,
                ),
                // themeMode: ThemeController().selectedTheme,
                themeMode: ThemeController().theme,
                theme: AppTheme.light().data,
                darkTheme: AppTheme.dark().data,
                builder: EasyLoading.init(),
                getPages: AppNavigator.routes,
                initialRoute: AppRoutes.login,
              );
          },
        );
      },
    );
  }
}
