import 'dart:io';

import 'package:get/get.dart';

import '../../../../core/picker/picker.dart';

class AddSavedController extends GetxController {
  RxList<File> imageFileSelected = <File>[].obs;

  void selectImages() async {
    List<File>? images = await pickImagesFromGallery();
    if (images.isNotEmpty) {
      for (var element in images) {
        imageFileSelected.add(element);
      }
    }
    update();
  }

  void changeDateTime(DateTime date){
    selectedDate = date;
    update();
  }
  
  DateTime selectedDate = DateTime.now();
}
