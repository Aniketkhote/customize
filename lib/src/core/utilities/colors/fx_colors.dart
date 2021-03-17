import '/src/core/mixins/colors_mixin.dart';
import 'package:flutter/material.dart';

class FxColors with FxColorsMixin {
  ///Main Colors
  static Color primary = Color(0xff3880FF);
  static Color secondary = Color(0xffAA66CC);
  static Color success = Color(0xFF37BC64);
  static Color info = Color(0xff33B5E5);
  static Color warning = Color(0xFFF9AE3F);
  static Color danger = Color(0xFFDE5050);
  static Color light = Color(0xffE0E0E0);
  static Color dark = Color(0xff222428);

  ///Light Main Colors
  static Color primaryLight = primary.withOpacity(0.1);
  static Color secondaryLight = secondary.withOpacity(0.1);
  static Color successLight = success.withOpacity(0.1);
  static Color infoLight = info.withOpacity(0.1);
  static Color warningLight = warning.withOpacity(0.1);
  static Color dangerLight = danger.withOpacity(0.1);

  static Color text = Color(0xFF565360);
  static Color label = Color(0xFF908E9B);
  static Color disabled = Color(0xFFE1DFE9);
  static Color textField = Color(0xFFEFEFF0);
}
