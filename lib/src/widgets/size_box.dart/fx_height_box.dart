import 'package:flutter/material.dart';

///Create Fixed size height box
class HBox extends StatelessWidget {
  HBox(this.height, {this.child});

  ///Create height box
  final double height;

  ///Create child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.toDouble(),
      child: child,
    );
  }
}
