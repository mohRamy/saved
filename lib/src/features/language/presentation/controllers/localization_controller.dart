import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/app_keys.dart';
import '../../../../core/services/shared_preferences_service.dart';
import '../../../../models/language_model.dart';

class LocalizationController extends GetxController {
  final SharedPreferencesService sharedPreferencesService;
  LocalizationController(this.sharedPreferencesService) {
    loadCurrentLanguage();
  }

  Locale _locale = Locale(
    AppKeys.languages[0].languageCode,
    AppKeys.languages[0].countryCode,
  );
  Locale get locale => _locale;

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  List<LanguageModel> _languages = [];
  List<LanguageModel> get languages => _languages;

  void loadCurrentLanguage() async {
    _locale = Locale(
      sharedPreferencesService.getData<String>(key: AppKeys.languageCode) ?? AppKeys.languages[0].languageCode,
      sharedPreferencesService.getData<String>(key: AppKeys.countryCode) ?? AppKeys.languages[0].countryCode,
    );

    for (int index = 0; index < AppKeys.languages.length; index++) {
      if (AppKeys.languages[index].languageCode == _locale.languageCode) {
        _selectedIndex = index;
        break;
      }
    }

    _languages = [];
    _languages.addAll(AppKeys.languages);
    update();
  }

  void setLanguage(Locale locale) {
    Get.updateLocale(locale);
    _locale = locale;
    saveLanguage(_locale);
    update();
  }

  void setSelectIndex(int index) {
    _selectedIndex = index;
    update();
  }

  void saveLanguage(Locale locale) {
    sharedPreferencesService.setData(
      key: AppKeys.languageCode,
      value: locale.languageCode,
    );
    sharedPreferencesService.setData(
      key: AppKeys.countryCode,
      value: locale.countryCode!,
    );
  }
}
