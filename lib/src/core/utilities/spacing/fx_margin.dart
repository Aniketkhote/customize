import '/src/core/mixins/pixel_mixin.dart';
import 'package:flutter/material.dart';

class FxMargin with FxPixelMixin {
  ///Custom margin

  ///[m] get all side margin
  static EdgeInsets m({double all}) => _margin(all: all);

  ///[mx] get horizontaly margin

  static EdgeInsets mx({double horizontal}) => _margin(horizontal: horizontal);

  ///[my] get vertically margin

  static EdgeInsets my({double vertical}) => _margin(vertical: vertical);

  ///[mr] get right side margin

  static EdgeInsets mr({double right}) => _margin(right: right);

  ///[ml] get left side margin

  static EdgeInsets ml({double left}) => _margin(left: left);

  ///[mt] get top side margin

  static EdgeInsets mt({double top}) => _margin(top: top);

  ///[mb] get bottom side margin

  static EdgeInsets mb({double bottom}) => _margin(bottom: bottom);

  ///EdgeInsets All
  ///
  ///Get all side margin [m] with predifned numbers [eg: m4]
  static EdgeInsets get m0 => _margin(all: FxPixelMixin.dp0);
  static EdgeInsets get m4 => _margin(all: FxPixelMixin.dp4);
  static EdgeInsets get m8 => _margin(all: FxPixelMixin.dp8);
  static EdgeInsets get m12 => _margin(all: FxPixelMixin.dp12);
  static EdgeInsets get m16 => _margin(all: FxPixelMixin.dp16);
  static EdgeInsets get m20 => _margin(all: FxPixelMixin.dp20);
  static EdgeInsets get m24 => _margin(all: FxPixelMixin.dp24);
  static EdgeInsets get m32 => _margin(all: FxPixelMixin.dp32);
  static EdgeInsets get m48 => _margin(all: FxPixelMixin.dp48);
  static EdgeInsets get m64 => _margin(all: FxPixelMixin.dp64);
  static EdgeInsets get m112 => _margin(all: FxPixelMixin.dp112);
  static EdgeInsets get m144 => _margin(all: FxPixelMixin.dp144);
  static EdgeInsets get m176 => _margin(all: FxPixelMixin.dp176);

  ///EdgeInsets Right
  ///
  ///Get right side margin [mr] with predifned numbers [eg: mr4]
  static EdgeInsets get mr0 => _margin(right: FxPixelMixin.dp0);
  static EdgeInsets get mr4 => _margin(right: FxPixelMixin.dp4);
  static EdgeInsets get mr8 => _margin(right: FxPixelMixin.dp8);
  static EdgeInsets get mr12 => _margin(right: FxPixelMixin.dp12);
  static EdgeInsets get mr16 => _margin(right: FxPixelMixin.dp16);
  static EdgeInsets get mr20 => _margin(right: FxPixelMixin.dp20);
  static EdgeInsets get mr24 => _margin(right: FxPixelMixin.dp24);
  static EdgeInsets get mr32 => _margin(right: FxPixelMixin.dp32);
  static EdgeInsets get mr48 => _margin(right: FxPixelMixin.dp48);
  static EdgeInsets get mr64 => _margin(right: FxPixelMixin.dp64);
  static EdgeInsets get mr112 => _margin(right: FxPixelMixin.dp112);
  static EdgeInsets get mr144 => _margin(right: FxPixelMixin.dp144);
  static EdgeInsets get mr176 => _margin(right: FxPixelMixin.dp176);

  ///EdgeInsets Left
  ///
  ///Get left side margin [ml] with predifned numbers [eg: ml4]
  static EdgeInsets get ml0 => _margin(left: FxPixelMixin.dp0);
  static EdgeInsets get ml4 => _margin(left: FxPixelMixin.dp4);
  static EdgeInsets get ml8 => _margin(left: FxPixelMixin.dp8);
  static EdgeInsets get ml12 => _margin(left: FxPixelMixin.dp12);
  static EdgeInsets get ml16 => _margin(left: FxPixelMixin.dp16);
  static EdgeInsets get ml20 => _margin(left: FxPixelMixin.dp20);
  static EdgeInsets get ml24 => _margin(left: FxPixelMixin.dp24);
  static EdgeInsets get ml32 => _margin(left: FxPixelMixin.dp32);
  static EdgeInsets get ml48 => _margin(left: FxPixelMixin.dp48);
  static EdgeInsets get ml64 => _margin(left: FxPixelMixin.dp64);
  static EdgeInsets get ml112 => _margin(left: FxPixelMixin.dp112);
  static EdgeInsets get ml144 => _margin(left: FxPixelMixin.dp144);
  static EdgeInsets get ml176 => _margin(left: FxPixelMixin.dp176);

  ///EdgeInsets top
  ///
  ///Get top side margin [mt] with predifned numbers [eg: mt4]
  static EdgeInsets get mt0 => _margin(top: FxPixelMixin.dp0);
  static EdgeInsets get mt4 => _margin(top: FxPixelMixin.dp4);
  static EdgeInsets get mt8 => _margin(top: FxPixelMixin.dp8);
  static EdgeInsets get mt12 => _margin(top: FxPixelMixin.dp12);
  static EdgeInsets get mt16 => _margin(top: FxPixelMixin.dp16);
  static EdgeInsets get mt20 => _margin(top: FxPixelMixin.dp20);
  static EdgeInsets get mt24 => _margin(top: FxPixelMixin.dp24);
  static EdgeInsets get mt32 => _margin(top: FxPixelMixin.dp32);
  static EdgeInsets get mt48 => _margin(top: FxPixelMixin.dp48);
  static EdgeInsets get mt64 => _margin(top: FxPixelMixin.dp64);
  static EdgeInsets get mt112 => _margin(top: FxPixelMixin.dp112);
  static EdgeInsets get mt144 => _margin(top: FxPixelMixin.dp144);
  static EdgeInsets get mt176 => _margin(top: FxPixelMixin.dp176);

  ///EdgeInsets bottom
  ///
  ///Get bottom side margin [mb] with predifned numbers [eg: mb4]
  static EdgeInsets get mb0 => _margin(bottom: FxPixelMixin.dp0);
  static EdgeInsets get mb4 => _margin(bottom: FxPixelMixin.dp4);
  static EdgeInsets get mb8 => _margin(bottom: FxPixelMixin.dp8);
  static EdgeInsets get mb12 => _margin(bottom: FxPixelMixin.dp12);
  static EdgeInsets get mb16 => _margin(bottom: FxPixelMixin.dp16);
  static EdgeInsets get mb20 => _margin(bottom: FxPixelMixin.dp20);
  static EdgeInsets get mb24 => _margin(bottom: FxPixelMixin.dp24);
  static EdgeInsets get mb32 => _margin(bottom: FxPixelMixin.dp32);
  static EdgeInsets get mb48 => _margin(bottom: FxPixelMixin.dp48);
  static EdgeInsets get mb64 => _margin(bottom: FxPixelMixin.dp64);
  static EdgeInsets get mb112 => _margin(bottom: FxPixelMixin.dp112);
  static EdgeInsets get mb144 => _margin(bottom: FxPixelMixin.dp144);
  static EdgeInsets get mb176 => _margin(bottom: FxPixelMixin.dp176);

  ///EdgeInsets Horizontal
  ///
  ///Get horizontally margin [mx] with predifned numbers [eg: mx4]
  static EdgeInsets get mx4 => _margin(horizontal: FxPixelMixin.dp4);
  static EdgeInsets get mx8 => _margin(horizontal: FxPixelMixin.dp8);
  static EdgeInsets get mx12 => _margin(horizontal: FxPixelMixin.dp12);
  static EdgeInsets get mx16 => _margin(horizontal: FxPixelMixin.dp16);
  static EdgeInsets get mx20 => _margin(horizontal: FxPixelMixin.dp20);
  static EdgeInsets get mx24 => _margin(horizontal: FxPixelMixin.dp24);
  static EdgeInsets get mx32 => _margin(horizontal: FxPixelMixin.dp32);
  static EdgeInsets get mx48 => _margin(horizontal: FxPixelMixin.dp48);
  static EdgeInsets get mx64 => _margin(horizontal: FxPixelMixin.dp64);
  static EdgeInsets get mx112 => _margin(horizontal: FxPixelMixin.dp12);
  static EdgeInsets get mx144 => _margin(horizontal: FxPixelMixin.dp144);
  static EdgeInsets get mx176 => _margin(horizontal: FxPixelMixin.dp176);

  ///EdgeInsets Vertical
  ///
  ///Get vertically margin [my] with predifned numbers [eg: my4]
  static EdgeInsets get my4 => _margin(vertical: FxPixelMixin.dp4);
  static EdgeInsets get my8 => _margin(vertical: FxPixelMixin.dp8);
  static EdgeInsets get my12 => _margin(vertical: FxPixelMixin.dp12);
  static EdgeInsets get my16 => _margin(vertical: FxPixelMixin.dp16);
  static EdgeInsets get my20 => _margin(vertical: FxPixelMixin.dp20);
  static EdgeInsets get my24 => _margin(vertical: FxPixelMixin.dp24);
  static EdgeInsets get my32 => _margin(vertical: FxPixelMixin.dp32);
  static EdgeInsets get my48 => _margin(vertical: FxPixelMixin.dp48);
  static EdgeInsets get my64 => _margin(vertical: FxPixelMixin.dp64);
  static EdgeInsets get my112 => _margin(vertical: FxPixelMixin.dp12);
  static EdgeInsets get my144 => _margin(vertical: FxPixelMixin.dp144);
  static EdgeInsets get my176 => _margin(vertical: FxPixelMixin.dp176);

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
