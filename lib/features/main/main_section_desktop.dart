import 'package:flutter/gestures.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/common/providers/scrollcontroller_provider.dart';
// import 'package:portfolio/common/widgets/animated_fade_slide.dart';
import 'package:portfolio/common/widgets/selection_area.dart';
import 'package:portfolio/features/about/about_section.dart';
import 'package:portfolio/features/experiences/experiences_section.dart';
import 'package:portfolio/features/main/widgets/app_bar.dart';
import 'package:portfolio/features/personal_info/personal_info_section.dart';
import 'package:portfolio/features/projects/projects_section.dart';

class MainDesktop extends ConsumerWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.watch(scrollControllerProvider);
    // final scrollController = ScrollController();
    return Column(
      children: [
        const MyAppBar(),
        Expanded(
          child: Stack(
            children: [
              Container(
                // color: Theme.of(context).colorScheme.secondary,
                color: Theme.of(context).colorScheme.primary,
              ),
              Row(
                children: [
                  Expanded(
                    child: Listener(
                      onPointerSignal: (event) {
                        if (event is PointerScrollEvent) {
                          scrollController.position.moveTo(
                            scrollController.position.pixels +
                                event.scrollDelta.dy,
                          );
                        }
                      },
                      child: MySelectionArea(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(100, 80, 100, 100),
                          // new line: color
                          color: Theme.of(context).colorScheme.primary,
                          child: const Align(
                            alignment: Alignment.topRight,
                            child: PersonalInfoSection(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MySelectionArea(
                      child: Container(
                        // new line: color
                        color: Theme.of(context).colorScheme.primary,
                        child: SingleChildScrollView(
                          controller: scrollController,
                          padding: const EdgeInsetsDirectional.only(
                            top: 80,
                            end: 140,
                            bottom: 88,
                          ),
                          child: const Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 520,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    child: AboutSection(),
                                  ),
                                  SizedBox(height: 120),
                                  ExperiencesSection(),
                                  SizedBox(height: 120),
                                  ProjectsSection(),
                                ],
                              ),
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
