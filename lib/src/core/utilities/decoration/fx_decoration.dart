import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../shadows/fx_shadow.dart';

class FxDecoration {
  ///An immutable description of how to paint a box.
  ///
  ///The [BoxDecoration] class provides a variety of ways to draw a box.

  ///A list of shadows cast by this box behind the box.
  ///
  ///Sets custom shadow without using [boxShadow]
  static BoxDecoration shadow(
          {Color color,
          double blurRadius,
          Offset offset,
          double spreadRadius}) =>
      _copyWith(
          boxShadow: FxShadow.shadow(
              blurRadius: blurRadius, color: color, offset: offset));

  ///Gives custom normal [BoxShadow]
  static BoxDecoration get normalShadow =>
      _copyWith(boxShadow: FxShadow.normal);

  ///Gives custom thin [BoxShadow]
  static BoxDecoration get thinShadow => _copyWith(boxShadow: FxShadow.thin);

  ///Gives custom medium [BoxShadow]
  static BoxDecoration get mediumShadow =>
      _copyWith(boxShadow: FxShadow.medium);

  ///Gives custom thik [BoxShadow]
  static BoxDecoration get thikShadow => _copyWith(boxShadow: FxShadow.thik);

  static BoxDecoration _copyWith({List<BoxShadow> boxShadow}) => BoxDecoration(
        boxShadow: boxShadow,
      );
}
