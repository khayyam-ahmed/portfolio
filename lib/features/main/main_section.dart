import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portfolio/common/widgets/responsive.dart';
import 'package:portfolio/features/main/main_section_desktop.dart';
import 'package:portfolio/features/main/main_section_tablet.dart';

class MainSection extends HookWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      // endDrawer: ,
      body: const SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Responsive(
          desktop: MainDesktop(),
          tablet: MainTablet(),
        ),
      ),
    );
  }
}
