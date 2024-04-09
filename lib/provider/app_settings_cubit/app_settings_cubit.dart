import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ThemeOption { light, dark, system }
enum LanguageOption { english, hindi }

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

  void toggleDebug(bool value) {
    emit(state.copyWith(debug: value));
  }

  void toggleLogger(bool value) {
    emit(state.copyWith(logger: value));
  }

  void setTheme(ThemeOption theme) {
    emit(state.copyWith(theme: theme));
  }

  void setLanguage(LanguageOption language) {
    emit(state.copyWith(language: language));
  }
}

class SettingsState {
  final bool debug;
  final bool logger;
  final ThemeOption theme;
  final LanguageOption language;

  SettingsState({
    this.debug = false,
    this.logger = false,
    this.theme = ThemeOption.light,
    this.language = LanguageOption.english, // Default to English
  });

  SettingsState copyWith({
    bool? debug,
    bool? logger,
    ThemeOption? theme,
    LanguageOption? language,
  }) {
    return SettingsState(
      debug: debug ?? this.debug,
      logger: logger ?? this.logger,
      theme: theme ?? this.theme,
      language: language ?? this.language,
    );
  }
}