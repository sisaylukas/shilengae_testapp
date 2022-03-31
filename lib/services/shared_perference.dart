import 'package:apitest/app/app.logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceServices {
  final log = getLogger('SharedPreferenceServices');
  late SharedPreferences sharedPreferences;
  Future<void> sharedPereferndeInstance() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> setData(String key, String data) async {
    await sharedPreferences.setString(key, data);
  }

  Future<String?> getData(String key) async {
    return sharedPreferences.getString(key);
  }

  Future<void> setListData(String key, List<String> data) async {
    await sharedPreferences.setStringList(key, data);
  }

  Future<List<String>?> getListData(String key) async {
    return sharedPreferences.getStringList(key);
  }
}
