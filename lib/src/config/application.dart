import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../core/components/handle_messaging.dart';
import '../core/constants/app_assets.dart';
import '../core/constants/app_keys.dart';
import '../core/di/dependency_injection.dart';
import '../models/language_model.dart';

class Application {
  static String version = '1.0.0';
  static String baseUrl = '';
  static String imageUrl = '';
  static String socketUrl = '';
  static String mode = '';
  static bool isProductionMode = true;
  static Map<String, Map<String, String>> languages = {};

  Future<void> initialAppLication() async {
    try {
      baseUrl = 'http://192.168.39.79:8000/';
      imageUrl = '${baseUrl}api/up-load-file/';
      socketUrl = 'http://192.168.39.79:8000/';
      mode = 'PRODUCTION';
      WidgetsFlutterBinding.ensureInitialized();
      await AppGet.init();
      languages = await initLang();
      await GetStorage.init();
      requestPermission();
      handleReceiveNotification();
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Get.isDarkMode ? Brightness.light : Brightness.dark,
          statusBarIconBrightness: Get.isDarkMode ? Brightness.light : Brightness.dark,
        ),
      );
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  Future<Map<String, Map<String, String>>> initLang() async {
    Map<String, Map<String, String>> languages = {};

    for (LanguageModel languageModel in AppKeys.languages) {
      String jsonStringValues = await rootBundle.loadString('${AppAssets.languagePath}/${languageModel.languageCode}.json');
      Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
      Map<String, String> jsonMap = {};
      mappedJson.forEach((key, value) {
        jsonMap[key] = value.toString();
      });
      languages['${languageModel.languageCode}_${languageModel.countryCode}'] = jsonMap;
    }
    return languages;
  }

  // Singleton factory
  static final Application _instance = Application._internal();

  factory Application() {
    return _instance;
  }

  Application._internal();
}
