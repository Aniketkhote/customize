import 'package:get/get.dart';

import '/src/core/mixins/pixel_mixin.dart';

class FxWidth with FxPixelMixin {
  ///Widths
  static double get w4 => FxPixelMixin.dp4;
  static double get w8 => FxPixelMixin.dp8;
  static double get w12 => FxPixelMixin.dp12;
  static double get w16 => FxPixelMixin.dp16;
  static double get w20 => FxPixelMixin.dp20;
  static double get w24 => FxPixelMixin.dp24;
  static double get w32 => FxPixelMixin.dp32;
  static double get w48 => FxPixelMixin.dp48;
  static double get w64 => FxPixelMixin.dp64;
  static double get w112 => FxPixelMixin.dp112;
  static double get w144 => FxPixelMixin.dp144;
  static double get w176 => FxPixelMixin.dp176;

  ///[vw] get visible screen width
  static double vw({double width}) => Get.width / width;

  ///[vw50] get 50% visible sceen width(half screen)
  static double get vw50 => Get.width / 50;

  ///[vw100] get 100% visible sceen width(full screen)
  static double get vw100 => Get.width;
}
