import 'package:customize/src/fx_utilities.dart';
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
  }) =>
      _copyWith(
        color: color,
        alignment: alignment,
        decoration: decoration,
        height: height,
        width: width,
        margin: margin,
        padding: padding,
      );

  ///set background color to widget
  Container bgColor(Color color) => _copyWith(color: color);

  ///set [BoxDecoration] to child widget
  Container decoration(BoxDecoration decoration) =>
      _copyWith(decoration: decoration);

  ///set [BorderRadius] to child widget
  Container radius(BorderRadius borderRadius) =>
      _copyWith(borderRadius: borderRadius);

  ///set [BoxShadow] to child widget
  Container shadow(List<BoxShadow> shadow) => _copyWith(boxShadow: shadow);

  ///Removes [BoxShadow] to child widget
  Container get shadowNone => _copyWith(boxShadow: FxShadow.none);

  ///set thin [BoxShadow] to child widget
  Container get shadowThin => _copyWith(boxShadow: FxShadow.thin);

  ///set normal [BoxShadow] to child widget
  Container get shadowNormal => _copyWith(boxShadow: FxShadow.normal);

  ///set medium [BoxShadow] to child widget
  Container get shadowMedium => _copyWith(boxShadow: FxShadow.medium);

  ///set thik [BoxShadow] to child widget
  Container get shadowThik => _copyWith(boxShadow: FxShadow.thik);

  ///set [Border] to child widget
  Container border(Border border) => _copyWith(border: border);

  Container _copyWith({
    Color color,
    BoxDecoration decoration,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding,
    BorderRadius borderRadius,
    List<BoxShadow> boxShadow,
    Border border,
    double height,
    double width,
  }) =>
      Container(
        child: this,
        color: decoration == null ? color : null,
        alignment: alignment,
        decoration: decoration ??
            BoxDecoration(
              borderRadius: borderRadius,
              boxShadow: boxShadow,
              border: border,
            ),
        height: height,
        width: width,
        margin: margin,
        padding: padding,
      );
}
