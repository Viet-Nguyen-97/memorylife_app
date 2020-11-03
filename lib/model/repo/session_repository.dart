import 'package:memory_lifes/app/constants/preferences/app_preferences.dart';
import 'package:memory_lifes/model/local/pref.dart';
import 'package:meta/meta.dart';

class SessionRepository {
  Pref pref;

  SessionRepository({@required this.pref});

  Future<bool> saveToken(String token) {
    return pref.saveString(AppPreferences.auth_token, token);
  }

  Future<String> getToken() async {
    return await pref.getString(AppPreferences.auth_token);
  }
}
