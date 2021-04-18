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
  Expanded expanded([int flex]) => Expanded(
        child: this,
        flex: flex ?? 1,
      );

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
        height: height,
        width: width,
      );

  ///Hide widget
  Visibility hide([bool isVisible = false]) =>
      Visibility(child: this, visible: isVisible);

  ///show tooltip
  Widget tooltip(
    String message, {
    Key key,
    Decoration decoration,
    double height,
    bool preferBelow,
    EdgeInsetsGeometry padding,
    TextStyle textStyle,
    Duration waitDuration,
    EdgeInsetsGeometry margin,
  }) =>
      Tooltip(
        key: key,
        message: message,
        decoration: decoration,
        height: height,
        padding: padding,
        preferBelow: preferBelow,
        textStyle: textStyle,
        waitDuration: waitDuration,
        margin: margin,
        child: this,
      );

  ///How to align the child.
  ///
  ///The x and y values of the [Alignment] control the horizontal and vertical alignment, respectively
  ///[Align] has some properties like [Alignment.bottomCenter][Alignment.topRight]
  Align align({AlignmentGeometry alignment}) =>
      Align(child: this, alignment: alignment);

  ///[Align] child to Bottom Right of parent widget
  Align get bottomRight => Align(child: this, alignment: Alignment.bottomRight);

  ///[Align] child to Bottom Left of parent widget
  Align get bottomLeft => Align(child: this, alignment: Alignment.bottomLeft);

  ///[Align] child to Bottom Center of parent widget
  Align get bottomCenter =>
      Align(child: this, alignment: Alignment.bottomCenter);

  ///[Align] child to Top Right of parent widget
  Align get topRight => Align(child: this, alignment: Alignment.topRight);

  ///[Align] child to Top Left of parent widget
  Align get topLeft => Align(child: this, alignment: Alignment.topLeft);

  ///[Align] child to Top Center of parent widget
  Align get topCenter => Align(child: this, alignment: Alignment.topCenter);

  ///[Align] child to Center Right of parent widget
  Align get centerRight => Align(child: this, alignment: Alignment.centerRight);

  ///[Align] child to Center Left of parent widget
  Align get centerLeft => Align(child: this, alignment: Alignment.centerLeft);

  ///Creates a fixed size box.
  ///
  ///The [width] and [height] parameters can be null to indicate that
  ///the size of the box should not be constrained in the corresponding dimension.
  SizedBox sizedBox({double height, double width}) =>
      SizedBox(child: this, height: height, width: width);

  ///Creates a fixed sqaure size box.
  ///
  ///Sets [width] and [height] parameters equal to given size
  SizedBox squareBox(double size, [Widget child]) =>
      SizedBox(height: size, width: size, child: child);

  ///Create Fixed size width box
  SizedBox wBox(double size, [Widget child]) =>
      SizedBox(width: size, child: child);

  ///Create Fixed size height box
  SizedBox hBox(double size, [Widget child]) =>
      SizedBox(height: size, child: child);

  ///Create a widget that makes its child partially transparent
  ///
  ///The [Opacity] argument must not be null and must be between 0.0 and 1.0
  Opacity opacity(double opacity) => Opacity(opacity: opacity, child: this);

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

  /// Add on Tap handler to the current widget
  GestureDetector onTap(VoidCallback callback) {
    return GestureDetector(child: this, onTap: callback);
  }

  /// Add on Double Tap handler to the current widget
  GestureDetector onDoubleTap(VoidCallback callback) {
    return GestureDetector(child: this, onDoubleTap: callback);
  }

  /// Add on InkWell Tap handler to the current widget
  InkWell onInkTap(VoidCallback callback) {
    return InkWell(child: this, onTap: callback);
  }

  /// Add onInkWell Double Tap handler to the current widget
  InkWell onInkDoubleTap(VoidCallback callback) {
    return InkWell(child: this, onDoubleTap: callback);
  }
}
