import 'package:get/get.dart';
import '../../mixins/pixel_mixin.dart';

class FxWidth with FxPixelMixin {
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

  ///get visible screen width
  static double vw({double width}) => _getWidth / width;

  ///get 25% visible sceen width
  static double get vw25 => _getWidth / 25;

  ///get 50% visible sceen width(half screen)
  static double get vw50 => _getWidth / 50;

  ///get 75% visible sceen width
  static double get vw75 => _getWidth / 75;

  ///get 100% visible sceen width(full screen)
  static double get vw100 => _getWidth;

  static double get _getWidth => Get.width;
}
