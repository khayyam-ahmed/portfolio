import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/technology_chips.dart';

class TechnologyWrapChips extends StatelessWidget {
  const TechnologyWrapChips({
    super.key,
    required this.titles,
  });

  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: titles.map((technology) {
        return TechnologyChip(name: technology);
      }).toList(),
    );
  }
}
