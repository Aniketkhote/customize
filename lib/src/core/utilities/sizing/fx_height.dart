import 'package:get/get.dart';
import '../../mixins/pixel_mixin.dart';

///Gives predefined heights on of device MediaQuery
class FxHeight with FxPixelMixin {
  ///Gives 4% height of device
  static double get h4 => _getHeight(FxPixelMixin.dp4);

  ///Gives 8% height of device
  static double get h8 => _getHeight(FxPixelMixin.dp8);

  ///Gives 12% height of device
  static double get h12 => _getHeight(FxPixelMixin.dp12);

  ///Gives 16% height of device
  static double get h16 => _getHeight(FxPixelMixin.dp16);

  ///Gives 20% height of device
  static double get h20 => _getHeight(FxPixelMixin.dp20);

  ///Gives 24% height of device
  static double get h24 => _getHeight(FxPixelMixin.dp24);

  ///Gives 32% height of device
  static double get h32 => _getHeight(FxPixelMixin.dp32);

  ///Gives 48% height of device
  static double get h48 => _getHeight(FxPixelMixin.dp48);

  ///Gives 64% height of device
  static double get h64 => _getHeight(FxPixelMixin.dp64);

  ///get visible screen height
  static double height(double height) => _getHeight(height);

  ///Gives 25% height of device
  static double get h25 => _getHeight(25);

  ///Gives 50% height of device
  static double get h50 => _getHeight(50);

  ///Gives 75% height of device
  static double get h75 => _getHeight(75);

  ///Gives 100% height of device
  static double get h100 => _getHeight(100);

  static double _getHeight(double height) => Get.height * (height / 100);
}
