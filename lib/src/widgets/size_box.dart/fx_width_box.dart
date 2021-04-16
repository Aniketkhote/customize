import 'package:flutter/material.dart';

///Create Fixed size width box
class Width extends StatelessWidget {
  Width(this.width, {this.child});

  ///Create width box
  final double width;

  ///Create child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, child: child);
  }
}
