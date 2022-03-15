import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  Future<SharedPreferences> get _getInstance => SharedPreferences.getInstance();

  setUser(bool status) async {
    SharedPreferences instance = await _getInstance;
    await instance.setBool('USER', status);
  }

  getUser() async {
    SharedPreferences instance = await _getInstance;
    bool? user = instance.getBool('User');

    if (user == null) {
      return false;
    }

    return user;
  }
}
