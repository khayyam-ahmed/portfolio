import 'package:flutter/material.dart';
import 'package:portfolio/features/about/data/about.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Text(
            'About Me',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Text(
          aboutDescription_4,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
