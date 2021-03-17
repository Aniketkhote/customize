import '/src/core/mixins/pixel_mixin.dart';
import 'package:flutter/material.dart';

class FxPadding with FxPixelMixin {
  ///[p] get all side padding

  static EdgeInsets p({double all}) => _padding(all: all);

  ///[px] get horizontaly padding

  static EdgeInsets px({double horizontal}) => _padding(horizontal: horizontal);

  ///[py] get vertically padding

  static EdgeInsets py({double vertical}) => _padding(vertical: vertical);

  ///[pr] get right side padding

  static EdgeInsets pr({double right}) => _padding(right: right);

  ///[pl] get left side padding

  static EdgeInsets pl({double left}) => _padding(left: left);

  ///[pt] get top side padding

  static EdgeInsets pt({double top}) => _padding(top: top);

  ///[pb] get bottom side padding

  static EdgeInsets pb({double bottom}) => _padding(bottom: bottom);

  ///EdgeInsets All
  ///
  ///Get all side padding [p] with predifned numbers [eg: p4]
  static EdgeInsets get p0 => _padding(all: FxPixelMixin.dp0);
  static EdgeInsets get p4 => _padding(all: FxPixelMixin.dp4);
  static EdgeInsets get p8 => _padding(all: FxPixelMixin.dp8);
  static EdgeInsets get p12 => _padding(all: FxPixelMixin.dp12);
  static EdgeInsets get p16 => _padding(all: FxPixelMixin.dp16);
  static EdgeInsets get p20 => _padding(all: FxPixelMixin.dp20);
  static EdgeInsets get p24 => _padding(all: FxPixelMixin.dp24);
  static EdgeInsets get p32 => _padding(all: FxPixelMixin.dp32);
  static EdgeInsets get p48 => _padding(all: FxPixelMixin.dp48);
  static EdgeInsets get p64 => _padding(all: FxPixelMixin.dp64);
  static EdgeInsets get p112 => _padding(all: FxPixelMixin.dp112);
  static EdgeInsets get p144 => _padding(all: FxPixelMixin.dp144);
  static EdgeInsets get p176 => _padding(all: FxPixelMixin.dp176);

  ///EdgeInsets Right
  ///
  ///Get right side padding [pr] with predifned numbers [eg: pr4]
  static EdgeInsets get pr0 => _padding(right: FxPixelMixin.dp0);
  static EdgeInsets get pr4 => _padding(right: FxPixelMixin.dp4);
  static EdgeInsets get pr8 => _padding(right: FxPixelMixin.dp8);
  static EdgeInsets get pr12 => _padding(right: FxPixelMixin.dp12);
  static EdgeInsets get pr16 => _padding(right: FxPixelMixin.dp16);
  static EdgeInsets get pr20 => _padding(right: FxPixelMixin.dp20);
  static EdgeInsets get pr24 => _padding(right: FxPixelMixin.dp24);
  static EdgeInsets get pr32 => _padding(right: FxPixelMixin.dp32);
  static EdgeInsets get pr48 => _padding(right: FxPixelMixin.dp48);
  static EdgeInsets get pr64 => _padding(right: FxPixelMixin.dp64);
  static EdgeInsets get pr112 => _padding(right: FxPixelMixin.dp112);
  static EdgeInsets get pr144 => _padding(right: FxPixelMixin.dp144);
  static EdgeInsets get pr176 => _padding(right: FxPixelMixin.dp176);

  ///EdgeInsets Left
  ///
  ///Get left side padding [pl] with predifned numbers [eg: pl4]
  static EdgeInsets get pl0 => _padding(left: FxPixelMixin.dp0);
  static EdgeInsets get pl4 => _padding(left: FxPixelMixin.dp4);
  static EdgeInsets get pl8 => _padding(left: FxPixelMixin.dp8);
  static EdgeInsets get pl12 => _padding(left: FxPixelMixin.dp12);
  static EdgeInsets get pl16 => _padding(left: FxPixelMixin.dp16);
  static EdgeInsets get pl20 => _padding(left: FxPixelMixin.dp20);
  static EdgeInsets get pl24 => _padding(left: FxPixelMixin.dp24);
  static EdgeInsets get pl32 => _padding(left: FxPixelMixin.dp32);
  static EdgeInsets get pl48 => _padding(left: FxPixelMixin.dp48);
  static EdgeInsets get pl64 => _padding(left: FxPixelMixin.dp64);
  static EdgeInsets get pl112 => _padding(left: FxPixelMixin.dp112);
  static EdgeInsets get pl144 => _padding(left: FxPixelMixin.dp144);
  static EdgeInsets get pl176 => _padding(left: FxPixelMixin.dp176);

  ///EdgeInsets top
  ///
  ///Get top side padding [pt] with predifned numbers [eg: pt4]
  static EdgeInsets get pt0 => _padding(top: FxPixelMixin.dp0);
  static EdgeInsets get pt4 => _padding(top: FxPixelMixin.dp4);
  static EdgeInsets get pt8 => _padding(top: FxPixelMixin.dp8);
  static EdgeInsets get pt12 => _padding(top: FxPixelMixin.dp12);
  static EdgeInsets get pt16 => _padding(top: FxPixelMixin.dp16);
  static EdgeInsets get pt20 => _padding(top: FxPixelMixin.dp20);
  static EdgeInsets get pt24 => _padding(top: FxPixelMixin.dp24);
  static EdgeInsets get pt32 => _padding(top: FxPixelMixin.dp32);
  static EdgeInsets get pt48 => _padding(top: FxPixelMixin.dp48);
  static EdgeInsets get pt64 => _padding(top: FxPixelMixin.dp64);
  static EdgeInsets get pt112 => _padding(top: FxPixelMixin.dp112);
  static EdgeInsets get pt144 => _padding(top: FxPixelMixin.dp144);
  static EdgeInsets get pt176 => _padding(top: FxPixelMixin.dp176);

  ///EdgeInsets bottom
  ///
  ///Get bottom side padding [pb] with predifned numbers [eg: pb4]
  static EdgeInsets get pb0 => _padding(bottom: FxPixelMixin.dp0);
  static EdgeInsets get pb4 => _padding(bottom: FxPixelMixin.dp4);
  static EdgeInsets get pb8 => _padding(bottom: FxPixelMixin.dp8);
  static EdgeInsets get pb12 => _padding(bottom: FxPixelMixin.dp12);
  static EdgeInsets get pb16 => _padding(bottom: FxPixelMixin.dp16);
  static EdgeInsets get pb20 => _padding(bottom: FxPixelMixin.dp20);
  static EdgeInsets get pb24 => _padding(bottom: FxPixelMixin.dp24);
  static EdgeInsets get pb32 => _padding(bottom: FxPixelMixin.dp32);
  static EdgeInsets get pb48 => _padding(bottom: FxPixelMixin.dp48);
  static EdgeInsets get pb64 => _padding(bottom: FxPixelMixin.dp64);
  static EdgeInsets get pb112 => _padding(bottom: FxPixelMixin.dp112);
  static EdgeInsets get pb144 => _padding(bottom: FxPixelMixin.dp144);
  static EdgeInsets get pb176 => _padding(bottom: FxPixelMixin.dp176);

  ///EdgeInsets Horizontal
  ///
  ///Get horizontally padding [px] with predifned numbers [eg: px4]
  static EdgeInsets get px4 => _padding(horizontal: FxPixelMixin.dp4);
  static EdgeInsets get px8 => _padding(horizontal: FxPixelMixin.dp8);
  static EdgeInsets get px12 => _padding(horizontal: FxPixelMixin.dp12);
  static EdgeInsets get px16 => _padding(horizontal: FxPixelMixin.dp16);
  static EdgeInsets get px20 => _padding(horizontal: FxPixelMixin.dp20);
  static EdgeInsets get px24 => _padding(horizontal: FxPixelMixin.dp24);
  static EdgeInsets get px32 => _padding(horizontal: FxPixelMixin.dp32);
  static EdgeInsets get px48 => _padding(horizontal: FxPixelMixin.dp48);
  static EdgeInsets get px64 => _padding(horizontal: FxPixelMixin.dp64);
  static EdgeInsets get px112 => _padding(horizontal: FxPixelMixin.dp12);
  static EdgeInsets get px144 => _padding(horizontal: FxPixelMixin.dp144);
  static EdgeInsets get px176 => _padding(horizontal: FxPixelMixin.dp176);

  ///EdgeInsets Vertical
  ///
  ///Get vertically padding [py] with predifned numbers [eg: py4]
  static EdgeInsets get py4 => _padding(vertical: FxPixelMixin.dp4);
  static EdgeInsets get py8 => _padding(vertical: FxPixelMixin.dp8);
  static EdgeInsets get py12 => _padding(vertical: FxPixelMixin.dp12);
  static EdgeInsets get py16 => _padding(vertical: FxPixelMixin.dp16);
  static EdgeInsets get py20 => _padding(vertical: FxPixelMixin.dp20);
  static EdgeInsets get py24 => _padding(vertical: FxPixelMixin.dp24);
  static EdgeInsets get py32 => _padding(vertical: FxPixelMixin.dp32);
  static EdgeInsets get py48 => _padding(vertical: FxPixelMixin.dp48);
  static EdgeInsets get py64 => _padding(vertical: FxPixelMixin.dp64);
  static EdgeInsets get py112 => _padding(vertical: FxPixelMixin.dp12);
  static EdgeInsets get py144 => _padding(vertical: FxPixelMixin.dp144);
  static EdgeInsets get py176 => _padding(vertical: FxPixelMixin.dp176);

  static EdgeInsets _padding({
    double all,
    double horizontal,
    double vertical,
    double top,
    double bottom,
    double left,
    double right,
  }) =>
      EdgeInsets.only(
        top: top ?? vertical ?? all ?? 0.0,
        bottom: bottom ?? vertical ?? all ?? 0.0,
        left: left ?? horizontal ?? all ?? 0.0,
        right: right ?? horizontal ?? all ?? 0.0,
      );
}
