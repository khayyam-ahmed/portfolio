import 'package:flutter/material.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/features/personal_info/data/personal_info.dart';
import 'package:portfolio/features/personal_info/widgets/contact_bar.dart';
import 'package:portfolio/features/personal_info/widgets/resume_button.dart';

class PersonalInfoTablet extends StatelessWidget {
  const PersonalInfoTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = contactsList;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Khayyam Ahmed',
          style: Theme.of(context).textTheme.displayLarge,
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
        // ResumeButton(resumeUrl: resumeUrl),
        _buildResumeButton(),
        // const Spacer(),
        gapH8,
        ContactBar(contacts: contacts),
      ],
    );
  }

  Widget _buildResumeButton() {
    // if (resumeUrl) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: ResumeButton(resumeUrl: resumeUrl),
    );
  }
}
