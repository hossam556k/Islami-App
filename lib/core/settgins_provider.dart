import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettginsProvider extends ChangeNotifier{

  String currentLanguageCode="en";
  ThemeMode currentThemeMode=ThemeMode.dark;

  void changeLanguage(String newLanguageCode) {

    currentLanguageCode=newLanguageCode;
    notifyListeners();
  }

}