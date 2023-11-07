import 'package:flutter/material.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/common/widgets/technology_wrap_chips.dart';
import 'package:portfolio/features/projects/models/project.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final projectName = project.name;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "$projectName ",
              style: theme.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.open_in_new),
          ],
        ),
        gapH8,
        Row(
          children: [
            Expanded(
              child: Text(
                project.description,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        gapH12,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH4,
            _buildChips(),
          ],
        ),
      ],
    );
  }

  Widget _buildChips() {
    final projectTechnologies = project.technologies;
    return TechnologyWrapChips(titles: projectTechnologies);
  }
}
