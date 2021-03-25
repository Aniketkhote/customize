import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///Widget extension to entend widget functionality
extension WidgetExtensions on Widget {
  ///Wrap up any widget without using [center] widget
  ///
  ///Directly access [Center] widget using dot operator
  Center get center => Center(child: this);

  ///Creates a widget that expands a child of a [Row], [Column], or [Flex]
  ///
  ///child fills the available space along the flex widget's main axis.
  ///Directly access [Expanded] widget using dot operator
  Expanded get expanded => Expanded(child: this);

  ///Creates a widget that expands a child of a [Row], [Column], or [Flex]
  ///
  ///child fills the available space along the flex widget's main axis.
  ///Directly access [Expanded] widget with [flex] using dot operator
  Expanded expandedWithFlex({@required int flex}) =>
      Expanded(flex: flex, child: this);

  ///Creates a widget that controls where a child of a [Stack] is positioned.
  ///
  ///Only two out of the three horizontal values ([left], [right], [width]), and
  ///only two out of the three vertical values ([top], [bottom], [height]), can be set.
  ///In each case, at least one of the three must be null.
  Positioned positioned({
    double top,
    double bottom,
    double left,
    double right,
    double height,
    double width,
  }) =>
      Positioned(
        child: this,
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      );

  ///How to align the child.
  ///
  ///The x and y values of the [Alignment] control the horizontal and vertical alignment, respectively
  ///[Align] has some properties like [Alignment.bottomCenter][Alignment.topRight]
  Align align({AlignmentGeometry alignment}) =>
      Align(child: this, alignment: alignment);

  ///Creates a fixed size box.
  ///
  ///The [width] and [height] parameters can be null to indicate that
  ///the size of the box should not be constrained in the corresponding dimension.
  SizedBox sizedBox({@required double height, double width}) =>
      SizedBox(child: this, height: height, width: width);

  ///Creates a fixed  sqaure size box.
  ///
  ///Sets [width] and [height] parameters equal to given size
  SizedBox squareBox({@required double size}) =>
      SizedBox(child: this, height: size, width: size);

  ///Create a widget that makes its child partially transparent
  ///
  ///The [Opacity] argument must not be null and must be between 0.0 and 1.0
  Opacity opcity({@required double opacity}) =>
      Opacity(opacity: opacity, child: this);

  ///
  ///Get 0% [Opacity] which means fully invisible
  ///
  Opacity get opacity0 => Opacity(opacity: 0.0, child: this);

  ///
  ///Get 25% [Opacity] which means paritally visible
  ///
  Opacity get opacity25 => Opacity(opacity: 0.25, child: this);

  ///
  ///Get 50% [Opacity] which means half visible
  ///
  Opacity get opacity50 => Opacity(opacity: 0.50, child: this);

  ///
  ///Get 75% [Opacity] which means paritally invisible
  ///
  Opacity get opacity75 => Opacity(opacity: 0.75, child: this);

  ///
  ///Get 100% [Opacity] which means fully visible
  ///
  Opacity get opacity100 => Opacity(opacity: 1.0, child: this);
}
