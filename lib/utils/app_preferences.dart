import 'dart:convert';

import 'package:flutter_assignment/models/userModel/user_model.dart';
import 'package:flutter_assignment/utils/app_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static late AppPreferences _appPreferences;
  static SharedPreferences? sharedPreferences;

  AppPreferences._internal() {
    init();
  }

  factory AppPreferences() {
    _appPreferences = AppPreferences._internal();
    return _appPreferences;
  }

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> clearData() async {
    await sharedPreferences?.remove(AppPreferenceKeys.userData);
  }

  Future<void> saveUserData(UserModel userData) async {
    sharedPreferences?.setString(
        AppPreferenceKeys.userData, jsonEncode(userData.toJson()));
  }

  UserModel? getUserData() {
    UserModel? userData;
    final rawData = sharedPreferences?.getString(AppPreferenceKeys.userData);
    if (rawData != null) {
      userData = UserModel.fromJson(jsonDecode(rawData));
    }
    return userData;
  }
}
