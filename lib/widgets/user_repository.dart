import'package:shared_preferences/shared_preferences.dart';
import 'user_data.dart';


class UserRepository{
  static String _nameKeyPrefix='_nameKeyPrefix';
  static String _surnameKeyPrefix='_surnameKeyPrefix';
  static String _emailKeyPrefix='_emailKeyPrefix';

  Future <String?> getUserName (String email) async {
    final prefs = await SharedPreferences.getInstance();

    final name = prefs.getString (
      "$_nameKeyPrefix-$email",
    );

    return name;
  }


  Future <void> saveUserData (UserData userData) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      "$_nameKeyPrefix-${userData.email}",
      userData.name,
    );

    await prefs.setString(
      "$_emailKeyPrefix-${userData.email}",
      userData.email,
    );

  }
}