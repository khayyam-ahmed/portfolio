import 'package:flutter/material.dart';
import 'package:portfolio/features/main/widgets/app_bar.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _AppBarDelegate(),
      floating: true,
    );
  }
}

class _AppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return const MyAppBar();
  }

  @override
  double get minExtent => 56;

  @override
  double get maxExtent => 56;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}


// class MySliverAppBar extends StatelessWidget {
//   const MySliverAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverPersistentHeader(
//       delegate: _AppBarDelegate(),
//       floating: true,
//     );
//   }
// }

// class _AppBarDelegate extends SliverPersistentHeaderDelegate {
//   @override
//   Widget build(
//     BuildContext context,
//     double shrinkOffset,
//     bool overlapsContent,
//   ) {
//     return const MyAppBar();
//   }

//   @override
//   double get minExtent => 56;

//   @override
//   double get maxExtent => 56;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }
