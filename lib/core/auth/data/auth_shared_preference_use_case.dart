import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthSharedPreferenceUseCase {
  Future<String?> getSessionId();

  void putSessionId(String sessionId);
}

@Singleton(as: AuthSharedPreferenceUseCase)
class AuthSharedPreferenceUseCaseImpl extends AuthSharedPreferenceUseCase {
  SharedPreferences? prefs;

  static const String SESSION_ID = "session_id";

  @override
  Future<String?> getSessionId() async {
    await initPrefs();
    return prefs!.getString(SESSION_ID);
  }

  Future<void> initPrefs() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  @override
  void putSessionId(String sessionId) async {
    await initPrefs();
    unawaited(putString(SESSION_ID, sessionId));
  }

  Future<bool> putString(String key, String value) async {
    await prefs?.setString(key, value);
    return true;
  }
}
