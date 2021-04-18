import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../colors/fx_colors.dart';

///Gives predefined shadows
class FxShadow {
  ///Sets Custom single shadow.
  static List<BoxShadow> shadow({
    Color color,
    double blurRadius,
    Offset offset,
    double spreadRadius,
  }) =>
      _copyWith(
          blurRadius: blurRadius,
          color: color,
          offset: offset,
          spreadRadius: spreadRadius);

  ///Gives custom thin shadow
  static List<BoxShadow> get thin => _copyWith(
        color: FxColors.blueGray200,
        blurRadius: 2,
        offset: const Offset(1, 1),
        spreadRadius: 1,
      );

  ///Gives custom normal shadow
  static List<BoxShadow> get normal => _copyWith(
        color: FxColors.blueGray200,
        blurRadius: 3,
        offset: const Offset(1, 2),
        spreadRadius: 1,
      );

  ///Gives custom medium shadow
  static List<BoxShadow> get medium => _copyWith(
        color: FxColors.blueGray300,
        blurRadius: 3,
        offset: const Offset(1, 2),
        spreadRadius: 2,
      );

  ///Gives custom thik shadow
  static List<BoxShadow> get thik => _copyWith(
        color: FxColors.blueGray300,
        blurRadius: 5,
        offset: const Offset(2, 3),
        spreadRadius: 3,
      );

  static List<BoxShadow> _copyWith({
    Color color,
    double blurRadius,
    double spreadRadius,
    Offset offset,
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
