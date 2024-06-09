import 'package:portfolio/src/core/constants/app_assets.dart';

import '../../models/language_model.dart';

class AppKeys {
  static const inchToDP = 160;

  static const urlImageDefault = "https://thumbs.dreamstime.com/b/person-gray-photo-placeholder-man-silhouette-sign-white-background-139139332.jpg";

  // Lang
  static const String countryCode = 'country_code';
  static const String languageCode = 'language_code';
  static List<LanguageModel> languages = [
    LanguageModel(
      imageUrl: AppAssets.english,
      languageName: 'English',
      languageCode: 'en',
      countryCode: 'US',
    ),
    LanguageModel(
      imageUrl: AppAssets.arabic,
      languageName: 'عربي',
      languageCode: 'ar',
      countryCode: 'SA',
    ),
  ];

  // Local
  static const String user = 'user';
  static const String userId = 'userId';
  static const String type = 'type';
  static const String token = 'token';
}
