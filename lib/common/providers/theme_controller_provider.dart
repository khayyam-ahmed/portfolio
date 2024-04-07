import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class ThemeControllerNotifier extends StateNotifier<ThemeMode> {
  ThemeControllerNotifier() : super(ThemeMode.light);

  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}

final themeControllerProvider =
    StateNotifierProvider<ThemeControllerNotifier, ThemeMode>((ref) {
  return ThemeControllerNotifier();
});
