import 'package:flutter/material.dart';

class AppLanguageProvider extends ChangeNotifier{
  String appLangauge = 'en';
  void changeLangauge(String newLangaue){
    if(appLangauge == newLangaue){
      return ;
    }
    appLangauge= newLangaue;
    notifyListeners();
  }
}