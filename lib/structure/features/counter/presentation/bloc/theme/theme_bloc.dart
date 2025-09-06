import 'package:block_freezed_practice/structure/features/counter/presentation/bloc/theme/theme_event.dart';
import 'package:block_freezed_practice/structure/features/counter/presentation/bloc/theme/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/load_theme.dart';
import '../../../domain/usecases/toggle_theme.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ToggleThemeUseCase toggleThemeUseCase;
  final LoadThemeUseCase loadThemeUseCase;


  ThemeBloc(this.toggleThemeUseCase, this.loadThemeUseCase) : super(const ThemeState(isDark: false)) {
    on<ThemeEvent>((event, emit) async {
      await event.map(
        togglePressed: (e) async {
          final newValue = await toggleThemeUseCase(state.isDark);
          emit(ThemeState(isDark: newValue));
        },
        load: (e) async {
          final savedTheme = await loadThemeUseCase();
          emit(ThemeState(isDark: savedTheme));
        },
      );
    });
  }
}
