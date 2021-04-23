import 'package:get/get.dart';

///Gives predefined Width on MediaQuery
class FxWidth {
  ///Gives 4% device width
  static double get w4 => _getWidth(4);

  ///Gives 8% device width
  static double get w8 => _getWidth(8);

  ///Gives 12% device width
  static double get w12 => _getWidth(12);

  ///Gives 16% device width
  static double get w16 => _getWidth(16);

  ///Gives 20% device width
  static double get w20 => _getWidth(20);

  ///Gives 24% device width
  static double get w24 => _getWidth(24);

  ///Gives 32% device width
  static double get w32 => _getWidth(32);

  ///Gives 48% device width
  static double get w48 => _getWidth(48);

  ///Gives 64% device width
  static double get w64 => _getWidth(64);

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
