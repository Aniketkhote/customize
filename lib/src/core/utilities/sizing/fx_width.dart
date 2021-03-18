import 'package:get/get.dart';

import '/src/core/mixins/pixel_mixin.dart';

class FxWidth with FxPixelMixin {
  ///Widths

  ///Gives 4dp width
  static double get w4 => FxPixelMixin.dp4;

  ///Gives 8dp width
  static double get w8 => FxPixelMixin.dp8;

  ///Gives 12dp width
  static double get w12 => FxPixelMixin.dp12;

  ///Gives 16dp width
  static double get w16 => FxPixelMixin.dp16;

  ///Gives 20dp width
  static double get w20 => FxPixelMixin.dp20;

  ///Gives 24dp width
  static double get w24 => FxPixelMixin.dp24;

  ///Gives 32dp width
  static double get w32 => FxPixelMixin.dp32;

  ///Gives 48dp width
  static double get w48 => FxPixelMixin.dp48;

  ///Gives 64dp width
  static double get w64 => FxPixelMixin.dp64;

  ///[vw] get visible screen width
  static double vw({double width}) => Get.width / width;

  ///[vw50] get 50% visible sceen width(half screen)
  static double get vw50 => Get.width / 50;

  ///[vw100] get 100% visible sceen width(full screen)
  static double get vw100 => Get.width;
}
