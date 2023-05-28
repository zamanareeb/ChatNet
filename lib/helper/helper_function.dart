import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction
{
 //KEYS
 static String userLoggedInKey = 'LOGGEDINKEY';
 static String userNameKey = 'USERNAMEKEY';
 static String userEmailInKey = 'USEREMAILKEY';

 // saving the data to shared preferences

 // getting the data from shared preferences
 static Future<bool?> getUserLoggedInStatus() async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getBool(userLoggedInKey);
 }
}
