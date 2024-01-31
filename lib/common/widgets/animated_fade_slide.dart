import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedFadeSlide extends HookWidget {
  const AnimatedFadeSlide({
    super.key,
    required this.offset,
    this.duration = const Duration(milliseconds: 500),
    this.delay = const Duration(milliseconds: 0),
    required this.child,
  });
  final Widget child;
  final Offset offset;
  final Duration delay;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: duration);
    final curveAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.decelerate,
    );
    final dxAnimation = useAnimation(
      Tween(begin: offset.dx, end: 0.0).animate(curveAnimation),
    );
    final dyAnimation = useAnimation(
      Tween(begin: offset.dy, end: 0.0).animate(curveAnimation),
    );

    useEffect(() {
      Future.delayed(delay, () {
        if (context.mounted) {
          controller.forward();
        }
      });
      return null;
    }, [controller]);

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Opacity(
          opacity: controller.value,
          child: Transform.translate(
            offset: Offset(dxAnimation, dyAnimation),
            child: Opacity(
              opacity: controller.value,
              child: child,
            ),
          ),
        );
      },
    );
  }
}
