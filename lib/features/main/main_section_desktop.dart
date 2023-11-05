import 'package:flutter/material.dart';
import 'package:portfolio/features/main/widgets/app_bar.dart';

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
                color: Theme.of(context).colorScheme.primary,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 80, 100, 100),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text('Hello, I\'m\nKhayyam',
                        style: Theme.of(context).textTheme.titleLarge)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
