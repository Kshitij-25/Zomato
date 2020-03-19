import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';

class SliverHeader extends StatelessWidget {
  final Color bgColor;
  final Widget child;
  SliverHeader({
    @required this.bgColor,
    @required this.child
  });
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true,
        floating: false,
        delegate: Delegate(bgColor: bgColor, child: child,
        ),
    );
  }
}

class Delegate implements SliverPersistentHeaderDelegate{
  final Color bgColor;
  final Widget child;
  Delegate({ @required this.bgColor,@required this.child});
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(height: 200,
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: child,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 70;

  @override
  // TODO: implement minExtent
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;
}
