import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../colors/fx_colors.dart';

///Gives predefined shadows
class FxShadow {
  ///Sets Custom single shadow.
  static List<BoxShadow> shadow({
    Color? color,
    double? blurRadius,
    Offset? offset,
    double? spreadRadius,
  }) =>
      _copyWith(
        blurRadius: blurRadius,
        color: color,
        offset: offset,
        spreadRadius: spreadRadius,
      );

  ///Gives no shadow
  static List<BoxShadow> get none => _copyWith();

  ///Gives custom thin shadow
  static List<BoxShadow> get thin => _copyWith(
        color: FxColors.dark.withAlpha(10),
        blurRadius: 6.0,
        offset: const Offset(0.0, 3.0),
      );

  ///Gives custom normal shadow
  static List<BoxShadow> get normal => _copyWith(
        color: FxColors.dark.withAlpha(20),
        blurRadius: 6.0,
        offset: const Offset(0.0, 3.0),
      );

  ///Gives custom medium shadow
  static List<BoxShadow> get medium => _copyWith(
        color: FxColors.dark.withAlpha(40),
        blurRadius: 6.0,
        offset: const Offset(0.0, 3.0),
      );

  ///Gives custom thik shadow
  static List<BoxShadow> get thik => _copyWith(
        color: Color(0xFF000000).withAlpha(60),
        blurRadius: 6.0,
        offset: const Offset(1.0, 3.0),
      );

  static List<BoxShadow> _copyWith({
    Color? color,
    double? blurRadius,
    double? spreadRadius,
    Offset? offset,
  }) =>
      <BoxShadow>[
        BoxShadow(
          blurRadius: blurRadius ?? 0.0,
          color: color ?? Colors.transparent,
          offset: offset ?? Offset(0.0, 0.0),
          spreadRadius: spreadRadius ?? 0.0,
        )
      ];
}
