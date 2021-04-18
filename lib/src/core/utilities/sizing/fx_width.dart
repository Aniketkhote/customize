import 'package:get/get.dart';
import '../../mixins/pixel_mixin.dart';

///Gives predefined Width on MediaQuery
class FxWidth with FxPixelMixin {
  ///Gives 4% device width
  static double get w4 => _getWidth(FxPixelMixin.dp4);

  ///Gives 8% device width
  static double get w8 => _getWidth(FxPixelMixin.dp8);

  ///Gives 12% device width
  static double get w12 => _getWidth(FxPixelMixin.dp12);

  ///Gives 16% device width
  static double get w16 => _getWidth(FxPixelMixin.dp16);

  ///Gives 20% device width
  static double get w20 => _getWidth(FxPixelMixin.dp20);

  ///Gives 24% device width
  static double get w24 => _getWidth(FxPixelMixin.dp24);

  ///Gives 32% device width
  static double get w32 => _getWidth(FxPixelMixin.dp32);

  ///Gives 48% device width
  static double get w48 => _getWidth(FxPixelMixin.dp48);

  ///Gives 64% device width
  static double get w64 => _getWidth(FxPixelMixin.dp64);

  ///get device width
  static double width(double width) => _getWidth(width);

  ///get 25% device width
  static double get w25 => _getWidth(25);

  ///get 50% device width(half screen)
  static double get w50 => _getWidth(50);

  ///get 75% device width
  static double get w75 => _getWidth(75);

  ///get 100% device width(full screen)
  static double get w100 => _getWidth(100);

  static double _getWidth(double width) => Get.width * (width / 100);
}
