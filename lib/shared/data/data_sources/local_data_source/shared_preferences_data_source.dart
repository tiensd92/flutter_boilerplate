import '../../../dependencies/dependencies.dart';

@singleton
class SharedPreferencesDataSource {
  static SharedPreferencesDataSource get get => GetIt.I<SharedPreferencesDataSource>();

  late SharedPreferences _prefs;

  @PostConstruct()
  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
