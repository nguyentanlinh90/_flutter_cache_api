
import 'package:shared_preferences/shared_preferences.dart';

class SingletonStorage {
  static SingletonStorage? _instance;
  static SharedPreferences? _preferences;


  static Future<SingletonStorage?> getInstance() async {
    _instance ??= SingletonStorage();
    _preferences ??= await SharedPreferences.getInstance();
    return _instance;
  }
  static void setToken(String token) {
    _preferences!.setString('token', token);
  }
  static Future<String?> getToken() async {
    return _preferences!.getString('token');
  }

  static void setEmail(String email) {
    _preferences!.setString('user_email', email);
  }
  static Future<String?> getEmail() async {
    return _preferences!.getString('user_email');
  }


  static void setDeviceToken(String device_token) {
    _preferences!.setString('device_token', device_token);
  }
  static Future<String?> getDeviceToken() async {
    return _preferences!.getString('device_token');
  }


  static Future<bool> clearData()async{
   return await _preferences!.clear();
  }
}