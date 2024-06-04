import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'config/application.dart';
import 'core/lang/language_service.dart';
import 'core/lang/localization.dart';
import 'core/constants/app_keys.dart';
import '../src/core/routes/app_pages.dart';
import 'themes/theme_service.dart';
import 'themes/themes.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          child: GetBuilder<LocalizationController>(
              builder: (localizationController) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              locale: localizationController.locale,
              translations: AppTranslations(languages: Application.languages),
              fallbackLocale: Locale(
                AppKeys.languages[0].languageCode,
                AppKeys.languages[0].countryCode,
              ),
              themeMode: ThemeService().theme,
              theme: AppTheme.light().data,
              darkTheme: AppTheme.dark().data,
              builder: EasyLoading.init(),
              getPages: AppNavigator.routes,
              initialRoute: AppRoutes.SPLASH,
            );
          }),
        );
  }
}
