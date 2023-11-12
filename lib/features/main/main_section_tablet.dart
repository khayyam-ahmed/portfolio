import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/responsive.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/features/about/about_section.dart';
import 'package:portfolio/features/experiences/experiences_section.dart';
import 'package:portfolio/features/main/widgets/sliver_app_bar.dart';
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
                const MySliverAppBar(),
                SliverList.list(
                  children: [
                    Padding(
                      padding: _buildResponsivePadding(),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: PersonalInfoSection(),
                            ),
                            gapH100,
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: AboutSection(),
                            ),
                            gapH100,
                            ExperiencesSection(),
                            gapH100,
                            ProjectsSection(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  EdgeInsetsGeometry _buildResponsivePadding() {
    if (Responsive.isTablet(context)) {
      return const EdgeInsets.fromLTRB(48, 60, 48, 88);
    } else if (Responsive.isMobile(context)) {
      return const EdgeInsets.fromLTRB(20, 32, 20, 88);
    }
    return EdgeInsets.zero;
  }
}
