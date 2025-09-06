import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/repository/theme_repository.dart';

@LazySingleton(as: ThemeRepository)
class ThemeRepositoryImpl implements ThemeRepository {
  ThemeRepositoryImpl(this.prefs);

  final SharedPreferences prefs;
  static const String _key = "isDarkTheme";

  @override
  bool toggleTheme(bool isDark) {
    return !isDark;
  }

  @override
  Future<void> saveTheme(bool isDark) async {
    await prefs.setBool(_key, isDark);
  }

  @override
  Future<bool> loadThem() async {
    return prefs.getBool(_key) ?? false;
  }
}
