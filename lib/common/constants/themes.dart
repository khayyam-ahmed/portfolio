// import 'package:flex_color_scheme/flex_color_scheme.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// // Made for FlexColorScheme version 7.0.0. Make sure you
// // use same or higher package version, but still same major version.
// // If you use a lower version, some properties may not be supported.
// // In that case remove them after copying this theme to your app.

// final lightTheme = FlexThemeData.light(
//   colors: const FlexSchemeColor(
//     primary: Color(0xffbfd7ed),
//     primaryContainer: Color(0xff0074b7),
//     secondary: Color(0xff60a3d9),
//     secondaryContainer: Color(0xff003b73),
//     tertiary: Color(0xff8a9cbb),
//     tertiaryContainer: Color(0xff000000),
//     appBarColor: Color(0xff003b73),
//     error: Color(0xffb00020),
//   ),
//   textTheme: const TextTheme(
//     displayLarge: TextStyle(fontSize: 57),
//     displayMedium: TextStyle(fontSize: 45),
//     displaySmall: TextStyle(fontSize: 36),
//     headlineLarge: TextStyle(fontSize: 32),
//     headlineMedium: TextStyle(fontSize: 28),
//     headlineSmall: TextStyle(fontSize: 26),
//     titleLarge: TextStyle(fontSize: 24),
//     titleMedium: TextStyle(fontSize: 18),
//     titleSmall: TextStyle(fontSize: 16),
//     bodyLarge: TextStyle(fontSize: 18),
//     bodyMedium: TextStyle(fontSize: 16),
//     bodySmall: TextStyle(fontSize: 14),
//   ),
//   subThemesData: const FlexSubThemesData(
//     interactionEffects: false,
//     tintedDisabledControls: false,
//     inputDecoratorBorderType: FlexInputBorderType.underline,
//     inputDecoratorUnfocusedBorderIsColored: false,
//     chipRadius: 20.0,
//     tooltipRadius: 4.0,
//     tooltipSchemeColor: SchemeColor.inverseSurface,
//     tooltipOpacity: 0.9,
//     snackBarElevation: 6.0,
//     snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
//     navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
//     navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
//     navigationBarMutedUnselectedLabel: false,
//     navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
//     navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
//     navigationBarMutedUnselectedIcon: false,
//     navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
//     navigationBarIndicatorOpacity: 1.00,
//     navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
//     navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
//     navigationRailMutedUnselectedLabel: false,
//     navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
//     navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
//     navigationRailMutedUnselectedIcon: false,
//     navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
//     navigationRailIndicatorOpacity: 1.00,
//     navigationRailBackgroundSchemeColor: SchemeColor.surface,
//     navigationRailLabelType: NavigationRailLabelType.none,
//   ),
//   keyColors: const FlexKeyColors(
//     useSecondary: true,
//     keepPrimary: true,
//     keepSecondary: true,
//     keepTertiary: true,
//     keepPrimaryContainer: true,
//     keepSecondaryContainer: true,
//   ),
//   visualDensity: FlexColorScheme.comfortablePlatformDensity,
//   useMaterial3: true,
//   swapLegacyOnMaterial3: true,
//   // To use the playground font, add GoogleFonts package and uncomment
//   // fontFamily: GoogleFonts.notoSans().fontFamily,
//   fontFamily: GoogleFonts.nunito().fontFamily,
// );

// final darkTheme = FlexThemeData.dark(
//   colors: const FlexSchemeColor(
//     primary: Color(0xff274472),
//     primaryContainer: Color(0xff41729f),
//     secondary: Color(0xff122035),
//     secondaryContainer: Color(0xffc3e0e5),
//     tertiary: Color(0xff8a9cbb),
//     tertiaryContainer: Color(0xff000000),
//     appBarColor: Color(0xffc3e0e5),
//     error: Color(0xffcf6679),
//   ),
//   textTheme: const TextTheme(
//     displayLarge: TextStyle(fontSize: 57),
//     displayMedium: TextStyle(fontSize: 45),
//     displaySmall: TextStyle(fontSize: 36),
//     headlineLarge: TextStyle(fontSize: 32),
//     headlineMedium: TextStyle(fontSize: 28),
//     headlineSmall: TextStyle(fontSize: 26),
//     titleLarge: TextStyle(fontSize: 24),
//     titleMedium: TextStyle(fontSize: 18),
//     titleSmall: TextStyle(fontSize: 16),
//     bodyLarge: TextStyle(fontSize: 18),
//     bodyMedium: TextStyle(fontSize: 16),
//     bodySmall: TextStyle(fontSize: 14),
//   ),
//   subThemesData: const FlexSubThemesData(
//     interactionEffects: false,
//     tintedDisabledControls: false,
//     inputDecoratorBorderType: FlexInputBorderType.underline,
//     inputDecoratorUnfocusedBorderIsColored: false,
//     chipRadius: 20.0,
//     tooltipRadius: 4.0,
//     tooltipSchemeColor: SchemeColor.inverseSurface,
//     tooltipOpacity: 0.9,
//     snackBarElevation: 6.0,
//     snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
//     navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
//     navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
//     navigationBarMutedUnselectedLabel: false,
//     navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
//     navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
//     navigationBarMutedUnselectedIcon: false,
//     navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
//     navigationBarIndicatorOpacity: 1.00,
//     navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
//     navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
//     navigationRailMutedUnselectedLabel: false,
//     navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
//     navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
//     navigationRailMutedUnselectedIcon: false,
//     navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
//     navigationRailIndicatorOpacity: 1.00,
//     navigationRailBackgroundSchemeColor: SchemeColor.surface,
//     navigationRailLabelType: NavigationRailLabelType.none,
//   ),
//   keyColors: const FlexKeyColors(
//     useSecondary: true,
//     keepPrimary: true,
//     keepSecondary: true,
//     keepTertiary: true,
//     keepPrimaryContainer: true,
//     keepSecondaryContainer: true,
//   ),
//   visualDensity: FlexColorScheme.comfortablePlatformDensity,
//   useMaterial3: true,
//   swapLegacyOnMaterial3: true,
//   // To use the Playground font, add GoogleFonts package and uncomment
//   // fontFamily: GoogleFonts.notoSans().fontFamily,
//   fontFamily: GoogleFonts.nunito().fontFamily,
// );

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xffEAECEF), // Light Silver
    primaryContainer: Color(0xffD5D9E0), // Silver Chalice for containers
    // secondary: Color(0xff007AFF), // Electric Blue
    secondary: Color.fromARGB(255, 128, 226, 233),
    secondaryContainer:
        Color(0xffB3D4FF), // Light Blue for secondary containers
    tertiary: Color(0xffFF6B6B), // Soft Coral
    tertiaryContainer: Color(0xffFFD6D6), // Light Coral for tertiary containers
    appBarColor: Color(0xffD5D9E0), // Silver Chalice
    error: Color(0xffDC143C), // Crimson
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 57),
    displayMedium: TextStyle(fontSize: 45),
    displaySmall: TextStyle(fontSize: 36),
    headlineLarge: TextStyle(fontSize: 32),
    headlineMedium: TextStyle(fontSize: 28),
    headlineSmall: TextStyle(fontSize: 26),
    titleLarge: TextStyle(fontSize: 24),
    titleMedium: TextStyle(fontSize: 18),
    titleSmall: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 14),
  ),
  subThemesData: const FlexSubThemesData(
    interactionEffects: false,
    tintedDisabledControls: false,
    inputDecoratorBorderType: FlexInputBorderType.underline,
    inputDecoratorUnfocusedBorderIsColored: false,
    chipRadius: 20.0,
    tooltipRadius: 4.0,
    tooltipSchemeColor: SchemeColor.inverseSurface,
    tooltipOpacity: 0.9,
    snackBarElevation: 6.0,
    snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedLabel: false,
    navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedIcon: false,
    navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationBarIndicatorOpacity: 1.00,
    navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedLabel: false,
    navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedIcon: false,
    navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationRailIndicatorOpacity: 1.00,
    navigationRailBackgroundSchemeColor: SchemeColor.surface,
    navigationRailLabelType: NavigationRailLabelType.none,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    keepPrimary: true,
    keepSecondary: true,
    keepTertiary: true,
    keepPrimaryContainer: true,
    keepSecondaryContainer: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
  fontFamily: GoogleFonts.nunito().fontFamily,
);

final darkTheme = FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xff121212), // Matte Black
    primaryContainer: Color(0xff1E1E1E), // Eerie Black for containers
    secondary: Color(0xff546E7A), // Metallic Blue
    secondaryContainer:
        Color(0xff819CA9), // Light Blue Grey for secondary containers
    tertiary: Color(0xff2F3C48), // Gunmetal Grey
    tertiaryContainer:
        Color(0xff4B5966), // Light Gunmetal for tertiary containers
    appBarColor: Color(0xff1E1E1E), // Eerie Black
    error: Color(0xffFF1744), // Bright Red
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 57),
    displayMedium: TextStyle(fontSize: 45),
    displaySmall: TextStyle(fontSize: 36),
    headlineLarge: TextStyle(fontSize: 32),
    headlineMedium: TextStyle(fontSize: 28),
    headlineSmall: TextStyle(fontSize: 26),
    titleLarge: TextStyle(fontSize: 24),
    titleMedium: TextStyle(fontSize: 18),
    titleSmall: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 14),
  ),
  subThemesData: const FlexSubThemesData(
    interactionEffects: false,
    tintedDisabledControls: false,
    inputDecoratorBorderType: FlexInputBorderType.underline,
    inputDecoratorUnfocusedBorderIsColored: false,
    chipRadius: 20.0,
    tooltipRadius: 4.0,
    tooltipSchemeColor: SchemeColor.inverseSurface,
    tooltipOpacity: 0.9,
    snackBarElevation: 6.0,
    snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedLabel: false,
    navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedIcon: false,
    navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationBarIndicatorOpacity: 1.00,
    navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedLabel: false,
    navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedIcon: false,
    navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationRailIndicatorOpacity: 1.00,
    navigationRailBackgroundSchemeColor: SchemeColor.surface,
    navigationRailLabelType: NavigationRailLabelType.none,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    keepPrimary: true,
    keepSecondary: true,
    keepTertiary: true,
    keepPrimaryContainer: true,
    keepSecondaryContainer: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
  fontFamily: GoogleFonts.nunito().fontFamily,
);
