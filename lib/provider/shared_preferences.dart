import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  static SharedPreferences? _prefs;
  static const _signUp = 'signUp';
  static const _birthDate = 'birthDate';
  static const _allergy = 'allergy';

  static init() async => _prefs = await SharedPreferences.getInstance();

  static bool getSignUp() {
    return _prefs?.getBool(_signUp) ?? false;
  }

  static void setSignUp() async {
    await _prefs!.setBool(_signUp, true);
  }

  static void setBirthDate(DateTime dateTime) async {
    int year = dateTime.year, month = dateTime.month, day = dateTime.day;
    String value = "$day-$month-$year";
    await _prefs!.setString(_birthDate, value);
  }

  static String? getBirthDate() {
    return _prefs?.getString(_birthDate);
  }

  static void setAllergies(List<String> allergies) async {
    await _prefs!.setStringList(_allergy, allergies);
  }

  static List<String>? getAllergies() => _prefs?.getStringList(_allergy);
}
