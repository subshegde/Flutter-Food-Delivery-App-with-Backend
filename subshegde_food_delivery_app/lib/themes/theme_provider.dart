import 'package:flutter/material.dart';
import 'package:subshegde_food_delivery_app/themes/dark_mode.dart';
import 'package:subshegde_food_delivery_app/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;


  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }


  void toggleDarkMode(){
    if(_themeData == lightMode){
      themeData = darkMode;
    }else{
      themeData = lightMode;
    }
  }
}