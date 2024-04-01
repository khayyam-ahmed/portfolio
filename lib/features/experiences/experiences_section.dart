import 'package:flutter/material.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/common/constants/global_keys.dart';
import 'package:portfolio/features/experiences/data/experiences.dart';
import 'package:portfolio/features/experiences/widget/experience_card.dart';

class ExperiencesSection extends StatelessWidget {
  const ExperiencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = experiencesList;
    return Column(
      // key: experienceKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 20),
          child: Text(
            key: experienceKey,
            'Experience',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ...experiences.map((experience) {
          return Column(
            children: [
              ExperienceCard(experience: experience),
              // if (experiences.last != experience)
              gapH24,
            ],
          );
        }),
      ],
    );
  }
}
