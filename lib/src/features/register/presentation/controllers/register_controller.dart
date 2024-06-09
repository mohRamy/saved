import 'package:get/get.dart';

import '../../../../core/constants/app_enums.dart';


class RegisterController extends GetxController {
  // Data
  
  // States
  StateType getRegisterState = StateType.init;

  // Primitive
  String validationMessage = '';

  bool isObscure = true;
  void changeObsure() {
    isObscure = !isObscure;
    update();
  }
}
