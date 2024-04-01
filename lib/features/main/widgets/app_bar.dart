import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/constants/global_keys.dart';
import 'package:portfolio/common/providers/scrollcontroller_provider.dart';
// import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/common/widgets/responsive.dart';
import 'package:portfolio/features/main/widgets/app_bar_button.dart';

class MyAppBar extends ConsumerWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.watch(scrollControllerProvider);
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
                // gapW20,
                // Text(
                //   'Note: This web page is under development',
                //   style: Theme.of(context).textTheme.bodySmall!.copyWith(
                //         fontWeight: FontWeight.w100,
                //       ),
                // ),
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
              onPressed: () {
                scrollController.animateTo(
                  aboutKey.currentContext!.size!.height - 100,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
            ),
            AppBarButton(
              title: 'Experience',
              onPressed: () {
                scrollController.animateTo(
                  experienceKey.currentContext!.size!.height + 300,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
            ),
            AppBarButton(
              title: 'Projects',
              onPressed: () {
                scrollController.animateTo(
                  projectsKey.currentContext!.size!.height - 50,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ]),
      ],
    );
  }
}
