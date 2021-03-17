import '/src/core/mixins/pixel_mixin.dart';
import 'package:flutter/material.dart';

extension PaddingExtensions on Widget {
  //Custom Padding
  Padding p(double value) => _padding(all: value);
  Padding px(double value) => _padding(horizontal: value);
  Padding py(double value) => _padding(vertical: value);
  Padding pr(double value) => _padding(right: value);
  Padding pl(double value) => _padding(left: value);
  Padding pt(double value) => _padding(top: value);
  Padding pb(double value) => _padding(bottom: value);

  ///Padding All
  Padding get p0 => _padding(all: FxPixelMixin.dp0);
  Padding get p4 => _padding(all: FxPixelMixin.dp4);
  Padding get p8 => _padding(all: FxPixelMixin.dp8);
  Padding get p12 => _padding(all: FxPixelMixin.dp12);
  Padding get p16 => _padding(all: FxPixelMixin.dp16);
  Padding get p20 => _padding(all: FxPixelMixin.dp20);
  Padding get p24 => _padding(all: FxPixelMixin.dp24);
  Padding get p32 => _padding(all: FxPixelMixin.dp32);
  Padding get p48 => _padding(all: FxPixelMixin.dp48);
  Padding get p64 => _padding(all: FxPixelMixin.dp64);
  Padding get p112 => _padding(all: FxPixelMixin.dp112);
  Padding get p144 => _padding(all: FxPixelMixin.dp144);
  Padding get p176 => _padding(all: FxPixelMixin.dp176);

  ///Padding Right
  Padding get pr0 => _padding(right: FxPixelMixin.dp0);
  Padding get pr4 => _padding(right: FxPixelMixin.dp4);
  Padding get pr8 => _padding(right: FxPixelMixin.dp8);
  Padding get pr12 => _padding(right: FxPixelMixin.dp12);
  Padding get pr16 => _padding(right: FxPixelMixin.dp16);
  Padding get pr20 => _padding(right: FxPixelMixin.dp20);
  Padding get pr24 => _padding(right: FxPixelMixin.dp24);
  Padding get pr32 => _padding(right: FxPixelMixin.dp32);
  Padding get pr48 => _padding(right: FxPixelMixin.dp48);
  Padding get pr64 => _padding(right: FxPixelMixin.dp64);
  Padding get pr112 => _padding(right: FxPixelMixin.dp112);
  Padding get pr144 => _padding(right: FxPixelMixin.dp144);
  Padding get pr176 => _padding(right: FxPixelMixin.dp176);

  ///Padding Left
  Padding get pl0 => _padding(left: FxPixelMixin.dp0);
  Padding get pl4 => _padding(left: FxPixelMixin.dp4);
  Padding get pl8 => _padding(left: FxPixelMixin.dp8);
  Padding get pl12 => _padding(left: FxPixelMixin.dp12);
  Padding get pl16 => _padding(left: FxPixelMixin.dp16);
  Padding get pl20 => _padding(left: FxPixelMixin.dp20);
  Padding get pl24 => _padding(left: FxPixelMixin.dp24);
  Padding get pl32 => _padding(left: FxPixelMixin.dp32);
  Padding get pl48 => _padding(left: FxPixelMixin.dp48);
  Padding get pl64 => _padding(left: FxPixelMixin.dp64);
  Padding get pl112 => _padding(left: FxPixelMixin.dp112);
  Padding get pl144 => _padding(left: FxPixelMixin.dp144);
  Padding get pl176 => _padding(left: FxPixelMixin.dp176);

  ///Padding Top
  Padding get pt0 => _padding(top: FxPixelMixin.dp0);
  Padding get pt4 => _padding(top: FxPixelMixin.dp4);
  Padding get pt8 => _padding(top: FxPixelMixin.dp8);
  Padding get pt12 => _padding(top: FxPixelMixin.dp12);
  Padding get pt16 => _padding(top: FxPixelMixin.dp16);
  Padding get pt20 => _padding(top: FxPixelMixin.dp20);
  Padding get pt24 => _padding(top: FxPixelMixin.dp24);
  Padding get pt32 => _padding(top: FxPixelMixin.dp32);
  Padding get pt48 => _padding(top: FxPixelMixin.dp48);
  Padding get pt64 => _padding(top: FxPixelMixin.dp64);
  Padding get pt112 => _padding(top: FxPixelMixin.dp112);
  Padding get pt144 => _padding(top: FxPixelMixin.dp144);
  Padding get pt176 => _padding(top: FxPixelMixin.dp176);

  ///Padding Bottom
  Padding get pb0 => _padding(bottom: FxPixelMixin.dp0);
  Padding get pb4 => _padding(bottom: FxPixelMixin.dp4);
  Padding get pb8 => _padding(bottom: FxPixelMixin.dp8);
  Padding get pb12 => _padding(bottom: FxPixelMixin.dp12);
  Padding get pb16 => _padding(bottom: FxPixelMixin.dp16);
  Padding get pb20 => _padding(bottom: FxPixelMixin.dp20);
  Padding get pb24 => _padding(bottom: FxPixelMixin.dp24);
  Padding get pb32 => _padding(bottom: FxPixelMixin.dp32);
  Padding get pb48 => _padding(bottom: FxPixelMixin.dp48);
  Padding get pb64 => _padding(bottom: FxPixelMixin.dp64);
  Padding get pb112 => _padding(bottom: FxPixelMixin.dp112);
  Padding get pb144 => _padding(bottom: FxPixelMixin.dp144);
  Padding get pb176 => _padding(bottom: FxPixelMixin.dp176);

  ///Padding Horizontal
  Padding get px4 => _padding(horizontal: FxPixelMixin.dp4);
  Padding get px8 => _padding(horizontal: FxPixelMixin.dp8);
  Padding get px12 => _padding(horizontal: FxPixelMixin.dp12);
  Padding get px16 => _padding(horizontal: FxPixelMixin.dp16);
  Padding get px20 => _padding(horizontal: FxPixelMixin.dp20);
  Padding get px24 => _padding(horizontal: FxPixelMixin.dp24);
  Padding get px32 => _padding(horizontal: FxPixelMixin.dp32);
  Padding get px48 => _padding(horizontal: FxPixelMixin.dp48);
  Padding get px64 => _padding(horizontal: FxPixelMixin.dp64);
  Padding get px112 => _padding(horizontal: FxPixelMixin.dp112);
  Padding get px144 => _padding(horizontal: FxPixelMixin.dp144);
  Padding get px176 => _padding(horizontal: FxPixelMixin.dp176);

  ///Padding Vertical
  Padding get py4 => _padding(vertical: FxPixelMixin.dp4);
  Padding get py8 => _padding(vertical: FxPixelMixin.dp8);
  Padding get py12 => _padding(vertical: FxPixelMixin.dp12);
  Padding get py16 => _padding(vertical: FxPixelMixin.dp16);
  Padding get py20 => _padding(vertical: FxPixelMixin.dp20);
  Padding get py24 => _padding(vertical: FxPixelMixin.dp24);
  Padding get py32 => _padding(vertical: FxPixelMixin.dp32);
  Padding get py48 => _padding(vertical: FxPixelMixin.dp48);
  Padding get py64 => _padding(vertical: FxPixelMixin.dp64);
  Padding get py112 => _padding(vertical: FxPixelMixin.dp112);
  Padding get py144 => _padding(vertical: FxPixelMixin.dp144);
  Padding get py176 => _padding(vertical: FxPixelMixin.dp176);

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
