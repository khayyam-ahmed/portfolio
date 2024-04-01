import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final scrollControllerProvider = Provider<ScrollController>((ref) {
  return ScrollController();
});

// class ScrollControllerProvider extends StateNotifier<ScrollController> {
//   ScrollControllerProvider() : super(ScrollController());

//   void moveTo(GlobalKey key) {
//     state.animateTo(
//       key.currentContext!.size!.height,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//     );
//   }
// }

// final scrollControllerProvider = StateNotifierProvider<ScrollControllerProvider, ScrollController>((ref) {
//   return ScrollControllerProvider();
// });
