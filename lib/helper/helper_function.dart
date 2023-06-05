import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction
{
 //KEYS
 static String userLoggedInKey = 'LOGGEDINKEY';
 static String userNameKey = 'USERNAMEKEY';
 static String userEmailInKey = 'USEREMAILKEY';

 // saving the data to shared preferences

 static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async{
  SharedPreferences sf = await SharedPreferences.getInstance();
  return await sf.setBool(userLoggedInKey, isUserLoggedIn);
 }
 static Future<bool> saveUserNameSF(String userName) async{
  SharedPreferences sf = await SharedPreferences.getInstance();
  return await sf.setString(userNameKey, userName);
 }
 static Future<bool> saveUserEmailSF(String userEmail) async{
  SharedPreferences sf = await SharedPreferences.getInstance();
  return await sf.setString(userEmailInKey, userEmailInKey);
 }
 // getting the data from shared preferences
 static Future<bool?> getUserLoggedInStatus() async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getBool(userLoggedInKey);
 }
}
