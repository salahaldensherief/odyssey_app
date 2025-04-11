import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

class prefs{
  static late SharedPreferences _instanse;
  static Future<void> init() async{
    _instanse = await SharedPreferences.getInstance();
  }
  static setBool(String key , bool value){
    _instanse.setBool(key, value);
  }
  static getBoll(String key){
  return  _instanse.getBool(key)?? false;
  }
}