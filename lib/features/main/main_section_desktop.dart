import 'package:flutter/material.dart';
import 'package:portfolio/features/main/widgets/app_bar.dart';
import 'package:portfolio/features/personal_info/personal_info_section.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyAppBar(),
        Expanded(
          child: Stack(
            children: [
              Container(
                color: Theme.of(context).colorScheme.secondary,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 80, 100, 100),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: PersonalInfoSection(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
