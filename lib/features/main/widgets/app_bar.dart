import 'package:flutter/material.dart';

import 'package:portfolio/common/widgets/responsive.dart';
import 'package:portfolio/features/main/widgets/app_bar_button.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      // centerTitle: false,
      titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
      title: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          height: 56,
          child: SelectionContainer.disabled(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.terminal),
                const SizedBox(width: 12),
                Text(
                  'Portfolio',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        if (Responsive.isDesktop(context))
          Row(children: [
            AppBarButton(
              title: 'About',
              onPressed: () {},
            ),
            AppBarButton(
              title: 'Projects',
              onPressed: () {},
            ),
            AppBarButton(
              title: 'Contact',
              onPressed: () {},
            ),
          ]),
      ],
    );
  }
}
