import '../../../dependencies/dependencies.dart';

class SharedPreferencesDataSource {
  late SharedPreferences _prefs;

  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  
}