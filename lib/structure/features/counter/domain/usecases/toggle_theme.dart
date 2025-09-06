import 'package:injectable/injectable.dart';

import '../repository/theme_repository.dart';

@lazySingleton
class ToggleThemeUseCase{
  ThemeRepository repository;

  ToggleThemeUseCase(this.repository);

  Future<bool> call(bool isDark) async {
    final newThemeBool =  await repository.toggleTheme(isDark);
    await repository.saveTheme(newThemeBool);
    return newThemeBool;

  }
}