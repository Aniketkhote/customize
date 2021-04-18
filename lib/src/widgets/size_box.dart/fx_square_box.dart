import 'package:flutter/material.dart';

///Creates a fixed sqaure size box.
///
///Sets [width] and [height] parameters equal to given size
class SquareBox extends StatelessWidget {
  SquareBox(this.size, {this.child});

  ///Create square size box
  final double size;

  ///Create child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: child,
    );
  }
}
