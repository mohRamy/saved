import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_enums.dart';


class RegisterController extends GetxController {
  // Data
  
  // States
  StateType getRegisterState = StateType.init;

  // Primitive
  String validationMessage = '';

  // Text Controller
  late TextEditingController nameRC;
  late TextEditingController emailRC;
  late TextEditingController passwordRC;


  bool isObscure = true;
  void changeObsure() {
    isObscure = !isObscure;
    update();
  }
}
