import 'package:flutter/material.dart';

import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/features/personal_info/data/personal_info.dart';
import 'package:portfolio/features/personal_info/widgets/contact_bar.dart';
import 'package:portfolio/features/personal_info/widgets/resume_button.dart';

class PersonalInfoDesktop extends StatelessWidget {
  const PersonalInfoDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = contactsList;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Khayyam Ahmed',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        gapH4,
        Text(
          'Software Engineer', // description
          style: Theme.of(context).textTheme.titleLarge,
        ),
        gapH8,
        Text(
          'Flutter & Python Enthusiast', //sub description
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        gapH40,
        ResumeButton(resumeUrl: resumeUrl),
        const Spacer(),
        gapH8,
        ContactBar(contacts: contacts),
      ],
    );
  }
}
