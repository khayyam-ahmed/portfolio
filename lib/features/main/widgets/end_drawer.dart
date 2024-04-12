import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/selection_area.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/features/main/widgets/dark_mode_switch.dart';
import 'package:portfolio/features/main/widgets/drawer_button.dart';

import 'package:portfolio/common/constants/global_keys.dart';
import 'package:portfolio/common/widgets/responsive.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) return const SizedBox.shrink();
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          Divider(
            height: 8,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          Expanded(
            child: MySelectionArea(
              mouseCursor: MaterialStateMouseCursor.clickable,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gapH40,
                      const DarkModeSwitch(),
                      gapH80,
                      MyDrawerButton(
                        title: 'About',
                        sectionKey: aboutKey,
                      ),
                      gapH40,
                      MyDrawerButton(
                        title: 'Experience',
                        sectionKey: experienceKey,
                      ),
                      gapH40,
                      MyDrawerButton(
                        title: 'Projects',
                        sectionKey: projectsKey,
                      ),
                      gapH40,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
