import 'package:flutter/material.dart';
import 'package:memory_lifes/model/local/barrel_local.dart';

class AppLanguage {
  AppLanguage._();

  static List<Language> getSupportLanguage() {
    return List<Language>.of([
      Language(
        language: 'Vietnamese',
        code: 'vi',
        locale: Locale('vi', 'VN'),
      ),
      Language(
        language: 'English',
        code: 'en',
        locale: Locale('en', 'US'),
      ),
    ]);
  }

  static Language getDefaultLanguage() {
    return Language(
      language: 'Vietnamese',
      code: 'vi',
      locale: Locale('vi', 'VN'),
    );
  }
}