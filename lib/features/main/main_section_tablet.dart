import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/features/about/about_section.dart';
import 'package:portfolio/features/experiences/experiences_section.dart';
import 'package:portfolio/features/main/widgets/app_bar.dart';
import 'package:portfolio/features/personal_info/personal_info_section.dart';
import 'package:portfolio/features/projects/projects_section.dart';

class MainTablet extends StatefulWidget {
  const MainTablet({super.key});

  @override
  State<MainTablet> createState() => _MainTabletState();
}

class _MainTabletState extends State<MainTablet> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.secondary,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                const 
              ],
            ),
          ),
        ),
      ],
    );
  }
}
