import 'package:flutter/material.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/common/widgets/responsive.dart';
import 'package:portfolio/common/widgets/technology_wrap_chips.dart';
import 'package:portfolio/features/experiences/model/experience.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.experience});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.secondary,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.textable,
        onTap: () => _onTap(context),
        borderRadius: BorderRadius.circular(20),
        hoverColor: const Color.fromARGB(59, 0, 0, 0),
        splashColor: theme.colorScheme.secondary,
        highlightColor: theme.colorScheme.secondary.withAlpha(20),
        child: MouseRegion(
          cursor: SystemMouseCursors.basic,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        experience.job,
                        style: theme.textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    gapW24,
                    if (!Responsive.isMobile(context))
                      Text(
                        "${experience.startYear} - ${experience.endYear}",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                  ],
                ),
                if (Responsive.isMobile(context))
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        experience.company,
                        style: theme.textTheme.titleMedium,
                      ),
                      gapH4,
                      Text(
                        "${experience.startYear} - ${experience.endYear}",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  )
                else
                  Text(
                    experience.company,
                    style: theme.textTheme.titleMedium,
                  ),
                gapH8,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        experience.description,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                gapH12,
                gapH4,
                _buildChips(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) async {
    final url = experience.url;
    if (url == null) return;
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      if (context.mounted) {
        // print(e.toString());
      }
    }
  }

  Widget _buildChips() {
    final experienceTechnologies = experience.technologies;
    return TechnologyWrapChips(titles: experienceTechnologies);
  }
}
