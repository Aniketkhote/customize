import 'package:flutter/material.dart';

///Create Fixed size height box
class Height extends StatelessWidget {
  Height(this.height, {this.child});

  ///Create height box
  final double height;

  ///Create child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: child,
    );
  }
}
