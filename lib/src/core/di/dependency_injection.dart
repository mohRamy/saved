import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../lang/language_service.dart';

import '../helpers/api_helper/network_info.dart';

import '../services/api_service.dart';
import '../services/easy_loader_service.dart';
import '../services/shared_preferences_service.dart';

class AppGet {
  static final localizationGet = Get.find<LocalizationController>();

  // Taps
  static final searchGet = Get.find<SearchController>();

  static Future<void> init() async {
    // Share Preferences
    SharedPreferences pref = await SharedPreferences.getInstance();
    Get.put(pref);

    Get.lazyPut(()=>Dio());

    Get.put(EasyLoaderService());
    Get.put(SharedPreferencesService(pref: Get.find()));

    // Network Info
    Get.put(InternetConnectionChecker());
    Get.put<NetworkInfo>(NetworkInfoImpl(Get.find()));

    // Api Service
    Get.put(ApiService(Get.find()));

    // Logger
    Get.lazyPut(()=> Logger());

    //controllers
    Get.lazyPut(() => LocalizationController(Get.find()));
  }

  ///Singleton factory
  static final AppGet _instance = AppGet._internal();

  factory AppGet() {
    return _instance;
  }

  AppGet._internal();
}
