import 'package:injectable/injectable.dart';

import '../repository/theme_repository.dart';

@lazySingleton
class LoadThemeUseCase {
  ThemeRepository repository;

  LoadThemeUseCase(this.repository);

  Future<bool> call() async => repository.loadThem();
}
