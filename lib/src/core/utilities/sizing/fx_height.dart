import 'package:get/get.dart';
import '/src/core/mixins/pixel_mixin.dart';

class FxHeight with FxPixelMixin {
  ///Heights
  static double get h4 => FxPixelMixin.dp4;
  static double get h8 => FxPixelMixin.dp8;
  static double get h12 => FxPixelMixin.dp12;
  static double get h16 => FxPixelMixin.dp16;
  static double get h20 => FxPixelMixin.dp20;
  static double get h24 => FxPixelMixin.dp24;
  static double get h32 => FxPixelMixin.dp32;
  static double get h48 => FxPixelMixin.dp48;
  static double get h64 => FxPixelMixin.dp64;
  static double get h112 => FxPixelMixin.dp112;
  static double get h144 => FxPixelMixin.dp144;
  static double get h176 => FxPixelMixin.dp176;

  ///[vh] get visible screen height
  static double vh({double height}) => Get.height / height;

  ///[vh50] get 50% visible sceen height(half screen)
  static double get vh50 => Get.height / 50;

  ///[vh100] get 100% visible sceen height(full screen)
  static double get vh100 => Get.height;
}
