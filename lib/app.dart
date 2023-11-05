import 'package:flutter/material.dart';
import 'package:portfolio/features/main/main_section.dart';
import 'package:portfolio/common/constants/themes.dart' as themes;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      home: const MainSection(),
    );
  }
}
