import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:portfolio/common/providers/scrollcontroller_provider.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyDrawerButton extends ConsumerStatefulWidget {
  const MyDrawerButton({
    super.key,
    required this.title,
    required this.sectionKey,
  });

  final String title;
  final GlobalKey sectionKey;

  @override
  ConsumerState<MyDrawerButton> createState() => _MyDrawerButtonState();
}

class _MyDrawerButtonState extends ConsumerState<MyDrawerButton> {
  late ColorTween colorTween;

  @override
  void didChangeDependencies() {
    colorTween = ColorTween(
      begin: Theme.of(context).colorScheme.inverseSurface,
      end: Theme.of(context).colorScheme.onSecondary,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var isHovered = false;
    // final controller = useAnimationController(
    //   duration: const Duration(milliseconds: 200),
    // );
    // // final controller = ref.read(scrollControllerProvider);
    // final colorAnimation = useAnimation(colorTween.animate(controller));
    // final controller = AnimationController(vsync: this ,duration: const Duration(milliseconds: 200));
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headlineMedium!,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          if (!isHovered) {
            isHovered = true;
            // controller.forward();
            // controller.animateTo(
            //   sectionKey.currentContext!.size!.height,
            //   duration: const Duration(milliseconds: 200),
            //   curve: Curves.easeInOut,
            // );
          }
        },
        onExit: (_) {
          if (isHovered) {
            isHovered = false;
            // controller.reverse();
          }
        },
        child: GestureDetector(
          onTap: () => _onTap(context),
          child: Text(
            widget.title,
            // style: TextStyle(color: colorAnimation),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    final sectionKeyCurrentContext = widget.sectionKey.currentContext;
    if (sectionKeyCurrentContext != null) {
      Scrollable.ensureVisible(
        sectionKeyCurrentContext,
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
      );
    }
    Navigator.of(context).pop();
  }
}
