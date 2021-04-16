import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../mixins/pixel_mixin.dart';

///Gives predefined Margin without writting long syntax
class FxMargin with FxPixelMixin {
  ///Custom margin

  /// Get custom all side margin
  static EdgeInsets m(double all) => _margin(all: all);

  /// Get custom horizontaly margin
  static EdgeInsets mx(double horizontal) => _margin(horizontal: horizontal);

  /// Get custom vertically margin
  static EdgeInsets my(double vertical) => _margin(vertical: vertical);

  ///get [symmetric] vertically and horizontally margin
  static EdgeInsets mxy({@required double h, @required double v}) =>
      _margin(horizontal: h, vertical: v);

  /// Get custom right side margin

  static EdgeInsets mr(double right) => _margin(right: right);

  /// Get custom left side margin

  static EdgeInsets ml(double left) => _margin(left: left);

  /// Get custom top side margin

  static EdgeInsets mt(double top) => _margin(top: top);

  /// Get custom bottom side margin

  static EdgeInsets mb(double bottom) => _margin(bottom: bottom);

  ///EdgeInsets All
  ///
  ///Get all side margin  with predifned numbers

  ///Gives 0dp margin from all sides
  static EdgeInsets get m0 => _margin(all: FxPixelMixin.dp0);

  ///Gives 4dp margin from all sides
  static EdgeInsets get m4 => _margin(all: FxPixelMixin.dp4);

  ///Gives 8dp margin from all sides
  static EdgeInsets get m8 => _margin(all: FxPixelMixin.dp8);

  ///Gives 12dp margin from all sides
  static EdgeInsets get m12 => _margin(all: FxPixelMixin.dp12);

  ///Gives 16dp margin from all sides
  static EdgeInsets get m16 => _margin(all: FxPixelMixin.dp16);

  ///Gives 20dp margin from all sides
  static EdgeInsets get m20 => _margin(all: FxPixelMixin.dp20);

  ///Gives 24dp margin from all sides
  static EdgeInsets get m24 => _margin(all: FxPixelMixin.dp24);

  ///Gives 32dp margin from all sides
  static EdgeInsets get m32 => _margin(all: FxPixelMixin.dp32);

  ///Gives 48dp margin from all sides
  static EdgeInsets get m48 => _margin(all: FxPixelMixin.dp48);

  ///Gives 64dp margin from all sides
  static EdgeInsets get m64 => _margin(all: FxPixelMixin.dp64);

  ///EdgeInsets Right
  ///
  ///Get right side margin with predifned numbers

  ///Gives 0dp margin from right side
  static EdgeInsets get mr0 => _margin(right: FxPixelMixin.dp0);

  ///Gives 4dp margin from right side
  static EdgeInsets get mr4 => _margin(right: FxPixelMixin.dp4);

  ///Gives 8dp margin from right side
  static EdgeInsets get mr8 => _margin(right: FxPixelMixin.dp8);

  ///Gives 12dp margin from right side
  static EdgeInsets get mr12 => _margin(right: FxPixelMixin.dp12);

  ///Gives 16dp margin from right side
  static EdgeInsets get mr16 => _margin(right: FxPixelMixin.dp16);

  ///Gives 20dp margin from right side
  static EdgeInsets get mr20 => _margin(right: FxPixelMixin.dp20);

  ///Gives 24dp margin from right side
  static EdgeInsets get mr24 => _margin(right: FxPixelMixin.dp24);

  ///Gives 32dp margin from right side
  static EdgeInsets get mr32 => _margin(right: FxPixelMixin.dp32);

  ///Gives 48dp margin from right side
  static EdgeInsets get mr48 => _margin(right: FxPixelMixin.dp48);

  ///Gives 64dp margin from right side
  static EdgeInsets get mr64 => _margin(right: FxPixelMixin.dp64);

  ///EdgeInsets Left
  ///
  ///Get left side margin with predifned numbers

  ///Gives 0dp margin from left side
  static EdgeInsets get ml0 => _margin(left: FxPixelMixin.dp0);

  ///Gives 4dp margin from left side
  static EdgeInsets get ml4 => _margin(left: FxPixelMixin.dp4);

  ///Gives 8dp margin from left side
  static EdgeInsets get ml8 => _margin(left: FxPixelMixin.dp8);

  ///Gives 12dp margin from left side
  static EdgeInsets get ml12 => _margin(left: FxPixelMixin.dp12);

  ///Gives 16dp margin from left side
  static EdgeInsets get ml16 => _margin(left: FxPixelMixin.dp16);

  ///Gives 20dp margin from left side
  static EdgeInsets get ml20 => _margin(left: FxPixelMixin.dp20);

  ///Gives 24dp margin from left side
  static EdgeInsets get ml24 => _margin(left: FxPixelMixin.dp24);

  ///Gives 32dp margin from left side
  static EdgeInsets get ml32 => _margin(left: FxPixelMixin.dp32);

  ///Gives 48dp margin from left side
  static EdgeInsets get ml48 => _margin(left: FxPixelMixin.dp48);

  ///Gives 64dp margin from left side
  static EdgeInsets get ml64 => _margin(left: FxPixelMixin.dp64);

  ///EdgeInsets top
  ///
  ///Get top side margin with predifned numbers

  ///Gives 0dp margin from top side
  static EdgeInsets get mt0 => _margin(top: FxPixelMixin.dp0);

  ///Gives 4dp margin from top side
  static EdgeInsets get mt4 => _margin(top: FxPixelMixin.dp4);

  ///Gives 8dp margin from top side
  static EdgeInsets get mt8 => _margin(top: FxPixelMixin.dp8);

  ///Gives 12dp margin from top side
  static EdgeInsets get mt12 => _margin(top: FxPixelMixin.dp12);

  ///Gives 16dp margin from top side
  static EdgeInsets get mt16 => _margin(top: FxPixelMixin.dp16);

  ///Gives 20dp margin from top side
  static EdgeInsets get mt20 => _margin(top: FxPixelMixin.dp20);

  ///Gives 24dp margin from top side
  static EdgeInsets get mt24 => _margin(top: FxPixelMixin.dp24);

  ///Gives 32dp margin from top side
  static EdgeInsets get mt32 => _margin(top: FxPixelMixin.dp32);

  ///Gives 48dp margin from top side
  static EdgeInsets get mt48 => _margin(top: FxPixelMixin.dp48);

  ///Gives 64dp margin from top side
  static EdgeInsets get mt64 => _margin(top: FxPixelMixin.dp64);

  ///EdgeInsets bottom
  ///
  ///Get bottom side margin with predifned numbers

  ///Gives 0dp margin from bottom side
  static EdgeInsets get mb0 => _margin(bottom: FxPixelMixin.dp0);

  ///Gives 4dp margin from bottom side
  static EdgeInsets get mb4 => _margin(bottom: FxPixelMixin.dp4);

  ///Gives 8dp margin from bottom side
  static EdgeInsets get mb8 => _margin(bottom: FxPixelMixin.dp8);

  ///Gives 12dp margin from bottom side
  static EdgeInsets get mb12 => _margin(bottom: FxPixelMixin.dp12);

  ///Gives 16dp margin from bottom side
  static EdgeInsets get mb16 => _margin(bottom: FxPixelMixin.dp16);

  ///Gives 20dp margin from bottom side
  static EdgeInsets get mb20 => _margin(bottom: FxPixelMixin.dp20);

  ///Gives 24dp margin from bottom side
  static EdgeInsets get mb24 => _margin(bottom: FxPixelMixin.dp24);

  ///Gives 32dp margin from bottom side
  static EdgeInsets get mb32 => _margin(bottom: FxPixelMixin.dp32);

  ///Gives 48dp margin from bottom side
  static EdgeInsets get mb48 => _margin(bottom: FxPixelMixin.dp48);

  ///Gives 64dp margin from bottom side
  static EdgeInsets get mb64 => _margin(bottom: FxPixelMixin.dp64);

  ///EdgeInsets Horizontal
  ///
  ///Get horizontally margin with predifned numbers

  ///Gives 4dp margin horizontally
  static EdgeInsets get mx4 => _margin(horizontal: FxPixelMixin.dp4);

  ///Gives 8dp margin horizontally
  static EdgeInsets get mx8 => _margin(horizontal: FxPixelMixin.dp8);

  ///Gives 12dp margin horizontally
  static EdgeInsets get mx12 => _margin(horizontal: FxPixelMixin.dp12);

  ///Gives 16dp margin horizontally
  static EdgeInsets get mx16 => _margin(horizontal: FxPixelMixin.dp16);

  ///Gives 20dp margin horizontally
  static EdgeInsets get mx20 => _margin(horizontal: FxPixelMixin.dp20);

  ///Gives 24dp margin horizontally
  static EdgeInsets get mx24 => _margin(horizontal: FxPixelMixin.dp24);

  ///Gives 32dp margin horizontally
  static EdgeInsets get mx32 => _margin(horizontal: FxPixelMixin.dp32);

  ///Gives 48dp margin horizontally
  static EdgeInsets get mx48 => _margin(horizontal: FxPixelMixin.dp48);

  ///Gives 64dp margin horizontally
  static EdgeInsets get mx64 => _margin(horizontal: FxPixelMixin.dp64);

  ///EdgeInsets Vertical
  ///
  ///Get vertically margin with predifned numbers

  ///Gives 4dp margin vertically
  static EdgeInsets get my4 => _margin(vertical: FxPixelMixin.dp4);

  ///Gives 8dp margin vertically
  static EdgeInsets get my8 => _margin(vertical: FxPixelMixin.dp8);

  ///Gives 12dp margin vertically
  static EdgeInsets get my12 => _margin(vertical: FxPixelMixin.dp12);

  ///Gives 16dp margin vertically
  static EdgeInsets get my16 => _margin(vertical: FxPixelMixin.dp16);

  ///Gives 20dp margin vertically
  static EdgeInsets get my20 => _margin(vertical: FxPixelMixin.dp20);

  ///Gives 24dp margin vertically
  static EdgeInsets get my24 => _margin(vertical: FxPixelMixin.dp24);

  ///Gives 32dp margin vertically
  static EdgeInsets get my32 => _margin(vertical: FxPixelMixin.dp32);

  ///Gives 48dp margin vertically
  static EdgeInsets get my48 => _margin(vertical: FxPixelMixin.dp48);

  ///Gives 64dp margin vertically
  static EdgeInsets get my64 => _margin(vertical: FxPixelMixin.dp64);

  static EdgeInsets _margin({
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
