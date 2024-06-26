// import 'package:dartz/dartz.dart';
// import 'package:get/get.dart';
// import 'package:logger/logger.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPreferencesService extends GetxService {
//   final SharedPreferences pref;

//   SharedPreferencesService({required this.pref});

//   T? getData<T>({required String key}) {
//     Get.find<Logger>().i("Start `getData` in |SharedPreferencesService| ~~key~~ $key");
//     T? value;
//     if (T.toString() == 'int') {
//       value = pref.getInt(key) as T?;
//     }
//     if (T.toString() == 'double') {
//       value = pref.getDouble(key) as T?;
//     }
//     if (T.toString() == 'bool') {
//       value = pref.getBool(key) as T?;
//     }
//     if (T.toString() == 'String') {
//       value = pref.getString(key) as T?;
//     }
//     Get.find<Logger>().w(
//       "End `getData` in |SharedPreferencesService| ~~$key~~ $value",
//     );
//     return value;
//   }

//   Future<Unit> setData({required String key, required dynamic value}) async {
//     Get.find<Logger>().i(
//       "Start `setData` in |SharedPreferencesService| ~~key~~ $key, ~~value~~ $value",
//     );
//     bool isSetDone = false;
//     if (value is int) {
//       isSetDone = await pref.setInt(key, value);
//       return Future.value(unit);
//     }
//     if (value is double) {
//       isSetDone = await pref.setDouble(key, value);
//       return Future.value(unit);
//     }
//     if (value is bool) {
//       isSetDone = await pref.setBool(key, value);
//       return Future.value(unit);
//     }
//     if (value is String) {
//       isSetDone = await pref.setString(key, value);
//       return Future.value(unit);
//     }
//     if (value == null) {
//       isSetDone = await pref.remove(key);
//       return Future.value(unit);
//     }
//     Get.find<Logger>().w(
//       "End `setData` in |SharedPreferencesService| ~~isSetDone~~ $isSetDone",
//     );
//     return Future.value(unit);
//   }

//   Future<Unit> remove({required String key}) async {
//     Get.find<Logger>().i("Start `remove` in |SharedPreferencesService|");
//     final remove = await pref.remove(key);
//     Get.find<Logger>().w(
//       "End `clear` in |SharedPreferencesService| ~~isRemove~~ $remove ",
//     );
//     return Future.value(unit);
//   }

//   Future<Unit> clear() async {
//     Get.find<Logger>().i("Start `clear` in |SharedPreferencesService|");
//     final clear = await pref.clear();
//     Get.find<Logger>().w(
//       "End `clear` in |SharedPreferencesService| ~~isClear~~ $clear ",
//     );
//     return Future.value(unit);
//   }
// }

import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends GetxService {
  final SharedPreferences pref;

  SharedPreferencesService({required this.pref});

  T? getData<T>({required String key}) {
    Get.find<Logger>().i("Start `getData` in |SharedPreferencesService| ~~key~~ $key");
    T? value;
    if (T == int) {
      value = pref.getInt(key) as T?;
    } else if (T == double) {
      value = pref.getDouble(key) as T?;
    } else if (T == bool) {
      value = pref.getBool(key) as T?;
    } else if (T == String) {
      value = pref.getString(key) as T?;
    }
    Get.find<Logger>().w(
      "End `getData` in |SharedPreferencesService| ~~$key~~ $value",
    );
    return value;
  }

  Future<void> setData({required String key, required dynamic value}) async {
    Get.find<Logger>().i(
      "Start `setData` in |SharedPreferencesService| ~~key~~ $key, ~~value~~ $value",
    );
    if (value is int) {
      await pref.setInt(key, value);
    } else if (value is double) {
      await pref.setDouble(key, value);
    } else if (value is bool) {
      await pref.setBool(key, value);
    } else if (value is String) {
      await pref.setString(key, value);
    } else if (value == null) {
      await pref.remove(key);
    }
    Get.find<Logger>().w(
      "End `setData` in |SharedPreferencesService| ~~key~~ $key, ~~value~~ $value",
    );
  }

  Future<void> remove({required String key}) async {
    Get.find<Logger>().i("Start `remove` in |SharedPreferencesService| ~~key~~ $key");
    await pref.remove(key);
    Get.find<Logger>().w(
      "End `remove` in |SharedPreferencesService| ~~key~~ $key",
    );
  }

  Future<void> clear() async {
    Get.find<Logger>().i("Start `clear` in |SharedPreferencesService|");
    await pref.clear();
    Get.find<Logger>().w("End `clear` in |SharedPreferencesService|");
  }
}

