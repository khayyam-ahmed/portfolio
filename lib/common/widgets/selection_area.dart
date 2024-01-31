import 'package:flutter/material.dart';

class MySelectionArea extends StatelessWidget {
  const MySelectionArea({
    super.key,
    required this.child,
    this.mouseCursor = MaterialStateMouseCursor.textable,
  });
  final Widget child;
  final MouseCursor mouseCursor;
  @override
  Widget build(BuildContext context) {
    return DefaultSelectionStyle(
      selectionColor: Theme.of(context).colorScheme.tertiary,
      mouseCursor: mouseCursor,
      child: SelectionArea(
        child: child,
      ),
    );
  }
}
