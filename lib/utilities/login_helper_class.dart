import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninStorage {
  static const String _keyFirstName = 'firstName';
  static const String _keyLastName = 'lastName';
  static const String _keyEmail = 'email';
  static const String _keyPassword = 'password';

  
  static Future<void> saveUserDetails({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_keyFirstName, firstName);
    prefs.setString(_keyLastName, lastName);
    prefs.setString(_keyEmail, email);
    prefs.setString(_keyPassword, password);
    print("signed in");
  }

  static Future<Map<String, String>> getUserDetails() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'firstName': prefs.getString(_keyFirstName) ?? '',
      'lastName': prefs.getString(_keyLastName) ?? '',
      'email': prefs.getString(_keyEmail) ?? '',
      'password': prefs.getString(_keyPassword) ?? '',
    };
  }

  static login( String email,password)async{
        final prefs = await SharedPreferences.getInstance();
        if(email==prefs.getString(_keyEmail) && password==prefs.getString(_keyPassword) ){
          Get.toNamed("/home");

        }
        else{
          print("no");
        }


  }
}
