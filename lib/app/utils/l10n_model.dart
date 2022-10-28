import 'package:flutter/material.dart';

const defaultLanguageCode = _englishLanguageCode;
const _englishLanguageCode = 'en';

class L10nModel with ChangeNotifier {
  String preferredLanguageCode = defaultLanguageCode;

  void switchLanguage() {
    preferredLanguageCode = preferredLanguageCode == defaultLanguageCode ? _englishLanguageCode : defaultLanguageCode;
    notifyListeners();
  }
}
