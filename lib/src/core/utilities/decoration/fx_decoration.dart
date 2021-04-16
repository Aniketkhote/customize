import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../radius/fx_border_radius.dart';
import '../shadows/fx_shadow.dart';

///Box decoration to directly get decoration on container
class FxDecoration {
  ///An immutable description of how to paint a box.
  ///
  ///The [BoxDecoration] class provides a variety of ways to draw a box.
  static BoxDecoration decoration(
          {Color color,
          Border border,
          BorderRadius borderRadius,
          List<BoxShadow> boxShadow}) =>
      _copyWith(
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        color: color,
        border: border,
      );

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

  ///Gives [BorderRadius] for each corner of a rectangle.
  static BoxDecoration radius({
    double topLeft,
    double topRight,
    double bottomLeft,
    double bottomRight,
    double all,
  }) =>
      _copyWith(
          borderRadius: FxRadius.radius(
        all: all,
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
      ));

  ///Gives [BorderRadius] 5 for all sides
  static BoxDecoration get radius5 => _copyWith(borderRadius: FxRadius.radius5);

  ///Gives [BorderRadius] 10 for all sides
  static BoxDecoration get radius10 =>
      _copyWith(borderRadius: FxRadius.radius10);

  ///Gives [BorderRadius] 20 for all sides
  static BoxDecoration get radius20 =>
      _copyWith(borderRadius: FxRadius.radius20);

  ///Gives [BorderRadius] 30 for all sides
  static BoxDecoration get radius30 =>
      _copyWith(borderRadius: FxRadius.radius30);

  ///Gives [BorderRadius] 50 for all sides
  static BoxDecoration get radius50 =>
      _copyWith(borderRadius: FxRadius.radius50);

  ///Gives [BorderRadius] 5 for top left side
  static BoxDecoration get radiusTL5 =>
      _copyWith(borderRadius: FxRadius.radiusTL5);

  ///Gives [BorderRadius] 10 for top left side
  static BoxDecoration get radiusTL10 =>
      _copyWith(borderRadius: FxRadius.radiusTL10);

  ///Gives [BorderRadius] 20 for top left side
  static BoxDecoration get radiusTL20 =>
      _copyWith(borderRadius: FxRadius.radiusTL20);

  ///Gives [BorderRadius] 30 for top left side
  static BoxDecoration get radiusTL30 =>
      _copyWith(borderRadius: FxRadius.radiusTL30);

  ///Gives [BorderRadius] 50 for top left side
  static BoxDecoration get radiusTL50 =>
      _copyWith(borderRadius: FxRadius.radiusTL50);

  ///Gives [BorderRadius] 5 for top right side
  static BoxDecoration get radiusTR5 =>
      _copyWith(borderRadius: FxRadius.radiusTR5);

  ///Gives [BorderRadius] 10 for top right side
  static BoxDecoration get radiusTR10 =>
      _copyWith(borderRadius: FxRadius.radiusTR10);

  ///Gives [BorderRadius] 20 for top right side
  static BoxDecoration get radiusTR20 =>
      _copyWith(borderRadius: FxRadius.radiusTR20);

  ///Gives [BorderRadius] 30 for top right side
  static BoxDecoration get radiusTR30 =>
      _copyWith(borderRadius: FxRadius.radiusTR30);

  ///Gives [BorderRadius] 50 for top right side
  static BoxDecoration get radiusTR50 =>
      _copyWith(borderRadius: FxRadius.radiusTR50);

  ///Gives [BorderRadius] 5 for bottom left side
  static BoxDecoration get radiusBL5 =>
      _copyWith(borderRadius: FxRadius.radiusBL5);

  ///Gives [BorderRadius] 10 for bottom left side
  static BoxDecoration get radiusBL10 =>
      _copyWith(borderRadius: FxRadius.radiusBL10);

  ///Gives [BorderRadius] 20 for bottom left side
  static BoxDecoration get radiusBL20 =>
      _copyWith(borderRadius: FxRadius.radiusBL20);

  ///Gives [BorderRadius] 30 for bottom left side
  static BoxDecoration get radiusBL30 =>
      _copyWith(borderRadius: FxRadius.radiusBL30);

  ///Gives [BorderRadius] 50 for bottom left side
  static BoxDecoration get radiusBL50 =>
      _copyWith(borderRadius: FxRadius.radiusBL50);

  ///Gives [BorderRadius] 5 for bottom right side
  static BoxDecoration get radiusBR5 =>
      _copyWith(borderRadius: FxRadius.radiusBR5);

  ///Gives [BorderRadius] 10 for bottom right side
  static BoxDecoration get radiusBR10 =>
      _copyWith(borderRadius: FxRadius.radiusBR10);

  ///Gives [BorderRadius] 20 for bottom right side
  static BoxDecoration get radiusBR20 =>
      _copyWith(borderRadius: FxRadius.radiusBR20);

  ///Gives [BorderRadius] 30 for bottom right side
  static BoxDecoration get radiusBR30 =>
      _copyWith(borderRadius: FxRadius.radiusBR30);

  ///Gives [BorderRadius] 50 for bottom right side
  static BoxDecoration get radiusBR50 =>
      _copyWith(borderRadius: FxRadius.radiusBR50);

  static BoxDecoration _copyWith({
    List<BoxShadow> boxShadow,
    BorderRadius borderRadius,
    Color color,
    Border border,
  }) =>
      BoxDecoration(
        boxShadow: boxShadow ?? FxShadow.normal,
        borderRadius: borderRadius ?? FxRadius.radius5,
        border: border ?? Border.all(color: Colors.transparent),
        color: color ?? Colors.transparent,
      );
}
