import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/responsive.dart';
import 'package:portfolio/features/main/main_section_desktop.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
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
          tablet: ,
        ),
      ),
    );
  }
}
