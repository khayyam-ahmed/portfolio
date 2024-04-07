import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/common/providers/theme_controller_provider.dart';

class DarkModeSwitch extends ConsumerWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SelectionContainer.disabled(
      child: AnimatedToggleSwitch<bool>.dual(
        current: _getDarkMode(ref),
        onChanged: (_) {
          ref.read(themeControllerProvider.notifier).toggleTheme();
        },
        first: false,
        second: true,
        spacing: 8,
        height: 36,
        indicatorSize: const Size.square(32),
        animationCurve: Curves.decelerate,
        style: ToggleStyle(
          backgroundColor: Theme.of(context).colorScheme.primary,
          borderColor: Colors.transparent,
        ),
        styleBuilder: (_) => ToggleStyle(
          indicatorColor: _getDarkMode(ref)
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).switchTheme.thumbColor?.resolve({}),
        ),
        iconBuilder: (darkMode) {
          return _buildSwitchIcon(
            ref: ref,
            context: context,
            darkMode: darkMode,
          );
        },
        textBuilder: (darkMode) {
          return _buildSwitchIcon(
            ref: ref,
            context: context,
            darkMode: !darkMode,
          );
        },
      ),
    );
  }

  bool _getDarkMode(WidgetRef ref) {
    return ref.watch(themeControllerProvider) == ThemeMode.dark;
  }

  Icon _buildSwitchIcon({
    required WidgetRef ref,
    required BuildContext context,
    required bool darkMode,
  }) {
    if (darkMode) {
      if (_getDarkMode(ref)) {
        return Icon(
          Icons.mode_night_outlined,
          color: Theme.of(context).colorScheme.onInverseSurface,
        );
      }
      return const Icon(Icons.mode_night_outlined);
    }
    if (!_getDarkMode(ref)) {
      return Icon(
        Icons.wb_sunny_outlined,
        color: Theme.of(context).colorScheme.onInverseSurface,
      );
    }
    return const Icon(Icons.wb_sunny_outlined);
  }
}
