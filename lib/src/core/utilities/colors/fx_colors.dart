import '../../mixins/colors_mixin.dart';
import 'package:flutter/material.dart';

class FxColors with FxColorsMixin {
  ///Main Colors
  static const Color primary = Color(0xff3880FF);
  static const Color secondary = Color(0xffAA66CC);
  static const Color success = Color(0xFF37BC64);
  static const Color info = Color(0xff33B5E5);
  static const Color warning = Color(0xFFF9AE3F);
  static const Color danger = Color(0xFFDE5050);
  static const Color light = Color(0xffE0E0E0);
  static const Color dark = Color(0xff222428);

  ///Light Main Colors
  static const Color primaryLight = Color(0xFFEBF2FF);
  static const Color secondaryLight = Color(0xFFF7F0FA);
  static const Color successLight = Color(0XFFE2F8E9);
  static const Color infoLight = Color(0xFFEBF8FC);
  static const Color warningLight = Color(0XFFFF8DE);
  static const Color dangerLight = Color(0XFFFFF3F3);

  ///Text Colors
  static const Color textColor = Color(0xFF565360);
  static const Color labelColor = Color(0xFF908E9B);
  static const Color disabledColor = Color(0xFFE1DFE9);
  static const Color textFieldColor = Color(0xFFEFEFF0);
}
