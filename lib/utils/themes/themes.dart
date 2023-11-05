import 'package:flutter/material.dart';

final lightTheme = ThemeData.light().copyWith(
  useMaterial3: true,
  colorScheme: const ColorScheme.light().copyWith(
    primary: const Color(0xff274472),
    secondary: const Color(0xff60a3d9),
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: const Color(0xff274472),
    secondary: const Color(0xff122035),
  ),
);
