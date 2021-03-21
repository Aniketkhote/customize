import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../mixins/pixel_mixin.dart';

extension PaddingExtensions on Widget {
  ///get all side padding

  Padding p({@required double all}) => _padding(all: all);

  ///get horizontaly padding

  Padding px({@required double horizontal}) => _padding(horizontal: horizontal);

  ///get vertically padding

  Padding py({@required double vertical}) => _padding(vertical: vertical);

  ///get [symmetric] vertically and horizontally padding
  Padding pxy({@required double horizontal, @required double vertical}) =>
      _padding(horizontal: horizontal, vertical: vertical);

  ///get right side padding

  Padding pr({@required double right}) => _padding(right: right);

  ///get left side padding

  Padding pl({@required double left}) => _padding(left: left);

  ///get top side padding

  Padding pt({@required double top}) => _padding(top: top);

  ///get bottom side padding

  Padding pb({@required double bottom}) => _padding(bottom: bottom);

  ///EdgeInsets All
  ///
  ///Get all side padding predifned numbers

  ///Gives 0dp padding from all sides
  Padding get p0 => _padding(all: FxPixelMixin.dp0);

  ///Gives 4dp padding from all sides
  Padding get p4 => _padding(all: FxPixelMixin.dp4);

  ///Gives 8dp padding from all sides
  Padding get p8 => _padding(all: FxPixelMixin.dp8);

  ///Gives 12dp padding from all sides
  Padding get p12 => _padding(all: FxPixelMixin.dp12);

  ///Gives 16dp padding from all sides
  Padding get p16 => _padding(all: FxPixelMixin.dp16);

  ///Gives 20dp padding from all sides
  Padding get p20 => _padding(all: FxPixelMixin.dp20);

  ///Gives 24dp padding from all sides
  Padding get p24 => _padding(all: FxPixelMixin.dp24);

  ///Gives 32dp padding from all sides
  Padding get p32 => _padding(all: FxPixelMixin.dp32);

  ///Gives 48dp padding from all sides
  Padding get p48 => _padding(all: FxPixelMixin.dp48);

  ///Gives 64dp padding from all sides
  Padding get p64 => _padding(all: FxPixelMixin.dp64);

  ///EdgeInsets Right
  ///
  ///Get right side padding with predifned numbers

  ///Gives 0dp padding from right side
  Padding get pr0 => _padding(right: FxPixelMixin.dp0);

  ///Gives 4dp padding from right side
  Padding get pr4 => _padding(right: FxPixelMixin.dp4);

  ///Gives 8dp padding from right side
  Padding get pr8 => _padding(right: FxPixelMixin.dp8);

  ///Gives 12dp padding from right side
  Padding get pr12 => _padding(right: FxPixelMixin.dp12);

  ///Gives 16dp padding from right side
  Padding get pr16 => _padding(right: FxPixelMixin.dp16);

  ///Gives 20dp padding from right side
  Padding get pr20 => _padding(right: FxPixelMixin.dp20);

  ///Gives 24dp padding from right side
  Padding get pr24 => _padding(right: FxPixelMixin.dp24);

  ///Gives 32dp padding from right side
  Padding get pr32 => _padding(right: FxPixelMixin.dp32);

  ///Gives 48dp padding from right side
  Padding get pr48 => _padding(right: FxPixelMixin.dp48);

  ///Gives 64dp padding from right side
  Padding get pr64 => _padding(right: FxPixelMixin.dp64);

  ///EdgeInsets Left
  ///
  ///Get left side padding with predifned numbers

  ///Gives 0dp padding from left side
  Padding get pl0 => _padding(left: FxPixelMixin.dp0);

  ///Gives 4dp padding from left side
  Padding get pl4 => _padding(left: FxPixelMixin.dp4);

  ///Gives 8dp padding from left side
  Padding get pl8 => _padding(left: FxPixelMixin.dp8);

  ///Gives 12dp padding from left side
  Padding get pl12 => _padding(left: FxPixelMixin.dp12);

  ///Gives 16dp padding from left side
  Padding get pl16 => _padding(left: FxPixelMixin.dp16);

  ///Gives 20dp padding from left side
  Padding get pl20 => _padding(left: FxPixelMixin.dp20);

  ///Gives 24dp padding from left side
  Padding get pl24 => _padding(left: FxPixelMixin.dp24);

  ///Gives 32dp padding from left side
  Padding get pl32 => _padding(left: FxPixelMixin.dp32);

  ///Gives 48dp padding from left side
  Padding get pl48 => _padding(left: FxPixelMixin.dp48);

  ///Gives 64dp padding from left side
  Padding get pl64 => _padding(left: FxPixelMixin.dp64);

  ///EdgeInsets top
  ///
  ///Get top side padding with predifned numbers

  ///Gives 0dp padding from top side
  Padding get pt0 => _padding(top: FxPixelMixin.dp0);

  ///Gives 4dp padding from top side
  Padding get pt4 => _padding(top: FxPixelMixin.dp4);

  ///Gives 8dp padding from top side
  Padding get pt8 => _padding(top: FxPixelMixin.dp8);

  ///Gives 12dp padding from top side
  Padding get pt12 => _padding(top: FxPixelMixin.dp12);

  ///Gives 16dp padding from top side
  Padding get pt16 => _padding(top: FxPixelMixin.dp16);

  ///Gives 20dp padding from top side
  Padding get pt20 => _padding(top: FxPixelMixin.dp20);

  ///Gives 24dp padding from top side
  Padding get pt24 => _padding(top: FxPixelMixin.dp24);

  ///Gives 32dp padding from top side
  Padding get pt32 => _padding(top: FxPixelMixin.dp32);

  ///Gives 48dp padding from top side
  Padding get pt48 => _padding(top: FxPixelMixin.dp48);

  ///Gives 64dp padding from top side
  Padding get pt64 => _padding(top: FxPixelMixin.dp64);

  ///EdgeInsets bottom
  ///
  ///Get bottom side padding with predifned numbers
  ///Gives 0dp padding from bottom side
  Padding get pb0 => _padding(bottom: FxPixelMixin.dp0);

  ///Gives 4dp padding from bottom side
  Padding get pb4 => _padding(bottom: FxPixelMixin.dp4);

  ///Gives 8dp padding from bottom side
  Padding get pb8 => _padding(bottom: FxPixelMixin.dp8);

  ///Gives 12dp padding from bottom side
  Padding get pb12 => _padding(bottom: FxPixelMixin.dp12);

  ///Gives 16dp padding from bottom side
  Padding get pb16 => _padding(bottom: FxPixelMixin.dp16);

  ///Gives 20dp padding from bottom side
  Padding get pb20 => _padding(bottom: FxPixelMixin.dp20);

  ///Gives 24dp padding from bottom side
  Padding get pb24 => _padding(bottom: FxPixelMixin.dp24);

  ///Gives 32dp padding from bottom side
  Padding get pb32 => _padding(bottom: FxPixelMixin.dp32);

  ///Gives 48dp padding from bottom side
  Padding get pb48 => _padding(bottom: FxPixelMixin.dp48);

  ///Gives 64dp padding from bottom side
  Padding get pb64 => _padding(bottom: FxPixelMixin.dp64);

  ///EdgeInsets Horizontal
  ///
  ///Get horizontally padding with predifned numbers

  ///Gives 4dp padding horizontally
  Padding get px4 => _padding(horizontal: FxPixelMixin.dp4);

  ///Gives 8dp padding horizontally
  Padding get px8 => _padding(horizontal: FxPixelMixin.dp8);

  ///Gives 12dp padding horizontally
  Padding get px12 => _padding(horizontal: FxPixelMixin.dp12);

  ///Gives 16dp padding horizontally
  Padding get px16 => _padding(horizontal: FxPixelMixin.dp16);

  ///Gives 20dp padding horizontally
  Padding get px20 => _padding(horizontal: FxPixelMixin.dp20);

  ///Gives 24dp padding horizontally
  Padding get px24 => _padding(horizontal: FxPixelMixin.dp24);

  ///Gives 32dp padding horizontally
  Padding get px32 => _padding(horizontal: FxPixelMixin.dp32);

  ///Gives 48dp padding horizontally
  Padding get px48 => _padding(horizontal: FxPixelMixin.dp48);

  ///Gives 64dp padding horizontally
  Padding get px64 => _padding(horizontal: FxPixelMixin.dp64);

  ///EdgeInsets Vertical
  ///
  ///Get vertically padding with predifned numbers

  ///Gives 4dp padding vertically
  Padding get py4 => _padding(vertical: FxPixelMixin.dp4);

  ///Gives 8dp padding vertically
  Padding get py8 => _padding(vertical: FxPixelMixin.dp8);

  ///Gives 12dp padding vertically
  Padding get py12 => _padding(vertical: FxPixelMixin.dp12);

  ///Gives 16dp padding vertically
  Padding get py16 => _padding(vertical: FxPixelMixin.dp16);

  ///Gives 20dp padding vertically
  Padding get py20 => _padding(vertical: FxPixelMixin.dp20);

  ///Gives 24dp padding vertically
  Padding get py24 => _padding(vertical: FxPixelMixin.dp24);

  ///Gives 32dp padding vertically
  Padding get py32 => _padding(vertical: FxPixelMixin.dp32);

  ///Gives 48dp padding vertically
  Padding get py48 => _padding(vertical: FxPixelMixin.dp48);

  ///Gives 64dp padding vertically
  Padding get py64 => _padding(vertical: FxPixelMixin.dp64);

  Padding _padding({
    double all,
    double horizontal,
    double vertical,
    double top,
    double bottom,
    double left,
    double right,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          top: top ?? vertical ?? all ?? 0.0,
          bottom: bottom ?? vertical ?? all ?? 0.0,
          left: left ?? horizontal ?? all ?? 0.0,
          right: right ?? horizontal ?? all ?? 0.0,
        ),
        child: this,
      );
}
