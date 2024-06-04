import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_enums.dart';


class LoginController extends GetxController {
  // Data
  
  // States
  StateType getLoginState = StateType.init;

  // Primitive
  String validationMessage = '';

  // Text Controller
  late TextEditingController emailLC;
  late TextEditingController passwordLC;


  bool isObscure = true;
  void changeObsure() {
    isObscure = !isObscure;
    update();
  }
}
