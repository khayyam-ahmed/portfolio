import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/constants/sizes.dart';
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
                const Icon(FontAwesomeIcons.terminal),
                const SizedBox(width: 12),
                Text(
                  'Portfolio',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                gapW20,
                Text(
                  'Note: This web page is under development',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w100,
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
