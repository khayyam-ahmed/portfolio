import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portfolio/features/main/main_section.dart';
import 'package:portfolio/common/constants/themes.dart' as themes;
// import 'package:portfolio/common/widgets/animated_fade_slide.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      // Overriding the default theme with dark theme.
      themeMode: ThemeMode.dark,
      home: const MainSection(),
    );
  }
}
