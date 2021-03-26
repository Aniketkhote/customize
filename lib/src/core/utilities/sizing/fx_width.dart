import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../mixins/pixel_mixin.dart';

///Gives predefined Width on MediaQuery
class FxWidth with FxPixelMixin {
  ///Gives 4% device width
  static double get w4 => _getWidth(width: FxPixelMixin.dp4);

  ///Gives 8% device width
  static double get w8 => _getWidth(width: FxPixelMixin.dp8);

  ///Gives 12% device width
  static double get w12 => _getWidth(width: FxPixelMixin.dp12);

  ///Gives 16% device width
  static double get w16 => _getWidth(width: FxPixelMixin.dp16);

  ///Gives 20% device width
  static double get w20 => _getWidth(width: FxPixelMixin.dp20);

  ///Gives 24% device width
  static double get w24 => _getWidth(width: FxPixelMixin.dp24);

  ///Gives 32% device width
  static double get w32 => _getWidth(width: FxPixelMixin.dp32);

  ///Gives 48% device width
  static double get w48 => _getWidth(width: FxPixelMixin.dp48);

  ///Gives 64% device width
  static double get w64 => _getWidth(width: FxPixelMixin.dp64);

  ///get device width
  static double width({@required double width}) => _getWidth(width: width);

  ///get 25% device width
  static double get w25 => _getWidth(width: 25);

  ///get 50% device width(half screen)
  static double get w50 => _getWidth(width: 50);

  ///get 75% device width
  static double get w75 => _getWidth(width: 75);

  ///get 100% device width(full screen)
  static double get w100 => _getWidth(width: 100);

  static double _getWidth({double width}) => Get.width * (width / 100);
}
