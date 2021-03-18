import 'package:get/get.dart';
import '/src/core/mixins/pixel_mixin.dart';

class FxHeight with FxPixelMixin {
  ///Heights

  ///Gives 4dp height
  static double get h4 => FxPixelMixin.dp4;

  ///Gives 8dp height
  static double get h8 => FxPixelMixin.dp8;

  ///Gives 12dp height
  static double get h12 => FxPixelMixin.dp12;

  ///Gives 16dp height
  static double get h16 => FxPixelMixin.dp16;

  ///Gives 20dp height
  static double get h20 => FxPixelMixin.dp20;

  ///Gives 24dp height
  static double get h24 => FxPixelMixin.dp24;

  ///Gives 32dp height
  static double get h32 => FxPixelMixin.dp32;

  ///Gives 48dp height
  static double get h48 => FxPixelMixin.dp48;

  ///Gives 64dp height
  static double get h64 => FxPixelMixin.dp64;

  ///[vh] get visible screen height
  static double vh({double height}) => Get.height / height;

  ///[vh50] get 50% visible sceen height(half screen)
  static double get vh50 => Get.height / 50;

  ///[vh100] get 100% visible sceen height(full screen)
  static double get vh100 => Get.height;
}
