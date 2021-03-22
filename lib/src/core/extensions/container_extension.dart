import 'package:customize/customize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///Container extension to wrap any widget using dot
extension ContainerExtensions on Widget {
  ///Wrap up any widget without using [Container] widget
  ///
  ///Directly access [Container] widget using dot operator
  Container container({
    Color color,
    BoxDecoration decoration,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding,
    double height,
    double width,
    List<BoxShadow> boxShadow,
  }) =>
      _copyWith(
        color: color,
        alignment: alignment,
        decoration: decoration,
        height: height,
        width: width,
        margin: margin,
        padding: padding,
        boxShadow: boxShadow,
      );

  Container get decoration => _copyWith(decoration: FxDecoration.thikShadow);

  Container _copyWith({
    Color color,
    BoxDecoration decoration,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding,
    double height,
    double width,
    List<BoxShadow> boxShadow,
  }) =>
      Container(
        child: this,
        color: decoration == null ? color : null,
        alignment: alignment,
        decoration: boxShadow != null
            ? BoxDecoration(boxShadow: boxShadow)
            : decoration,
        height: height,
        width: width,
        margin: margin,
        padding: padding,
      );
}
