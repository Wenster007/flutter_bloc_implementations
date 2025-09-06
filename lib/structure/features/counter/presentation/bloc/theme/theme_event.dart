import 'package:freezed_annotation/freezed_annotation.dart';
part 'theme_event.freezed.dart';

@Freezed()
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.togglePressed() = TogglePressed;
  const factory ThemeEvent.load() = LoadThemeInitiated;
}