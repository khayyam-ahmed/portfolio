import 'package:flutter/material.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/features/projects/data/projects.dart';
import 'package:portfolio/features/projects/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 20),
          child: Text(
            'Projects',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ...projectsList.map((project) {
          // print(project.name);
          return Column(
            children: [
              ProjectCard(project: project),
              if (projectsList.last != project) gapH24,
            ],
          );
        }),
      ],
    );
  }
}
