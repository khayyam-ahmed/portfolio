import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key, this.onPressed, required this.title});

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      hoverColor: Theme.of(context).colorScheme.primary,
      splashColor: Theme.of(context).colorScheme.tertiary,
      shape: const Border(),
      onPressed: onPressed,
      child: SizedBox(
        height: 56,
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
