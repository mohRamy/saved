// import '../constants/app_keys.dart';
// import 'shared_preferences_service.dart';

// import '../../../features/screens/auth/data/models/auth_model.dart';

// class LocalService {
//   final SharedPreferencesService sharedPreferencesService;
//   LocalService(this.sharedPreferencesService);

//   // User Local
//   void saveUser(UserModel user) async {
//     sharedPreferencesService.setData(key: AppKeys.user, value: user.toJson());
//   }

//   UserModel? getUser() {
//     var rawData = sharedPreferencesService.getData(key: AppKeys.user);
//     if (rawData != null) {
//       return UserModel.fromJson(rawData);
//     }
//     return null;
//   }

//   void clearUserData() async {
//     sharedPreferencesService.remove(key: AppKeys.user);
//   }

//   void saveAccessToken(String token) async {
//     sharedPreferencesService.setData(key: AppKeys.token, value: token);
//   }

//   String getAccessToken() {
//     return sharedPreferencesService.getData(key: AppKeys.token) ?? '';
//   }

//   void clearAccessToken() async {
//     sharedPreferencesService.remove(key: AppKeys.token);
//   }

//   void saveUserId(String userId) async {
//     sharedPreferencesService.setData(key: AppKeys.userId, value: userId);
//   }

//   String getUserId() {
//     return sharedPreferencesService.getData(key: AppKeys.userId) ?? '';
//   }

//   void saveUserType(String type) async {
//     sharedPreferencesService.setData(key: AppKeys.type, value: type);
//   }

//   String getUserType() {
//     return sharedPreferencesService.getData(key: AppKeys.type) ?? '';
//   }

//   void clearUserType() async {
//     sharedPreferencesService.remove(key: AppKeys.type);
//   }
// }
