import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage ='en';     ////////   <===

 ThemeMode appMode = ThemeMode.dark;

  void changeLanguage (String newLanguage){
    if(appLanguage==newLanguage){
      return;
    }
    appLanguage=newLanguage;
    print(appLanguage);
      notifyListeners();
  }


void changeTheme( ThemeMode newMode){
    if(appMode==newMode){
      return;
    }
      appMode=newMode;
    notifyListeners();
}
  bool isDarkMode(){
    return appMode== ThemeMode.dark;
  }
}