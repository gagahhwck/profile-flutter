import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future<void> save(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(
      key,
      jsonEncode(value),
    );
  }

  Future<String> read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    String? prefsString = prefs.getString(key);
    if (prefsString == null) {
      return 'false';
    } else {
      return json.decode(prefsString);
    }
  }

  Future<void> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
