
abstract class ThemeRepository {
  bool toggleTheme(bool isDark);
  Future<void> saveTheme(bool isDark);
  Future<bool> loadThem();
}