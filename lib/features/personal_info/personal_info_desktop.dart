import 'package:flutter/material.dart';

import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/features/personal_info/data/contacts.dart';
import 'package:portfolio/features/personal_info/widgets/contact_bar.dart';

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
          'Flutter & ML Enthusiast', //sub description
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Spacer(),
        gapH8,
        ContactBar(contacts: contacts),
      ],
    );
  }
}
