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

  ///Gives custom normal shadow
  static List<BoxShadow> get normal => _copyWith(
      color: FxColors.blueGray400,
      blurRadius: 15,
      offset: const Offset(5, 5),
      spreadRadius: 5);

  ///Gives custom thin shadow
  static List<BoxShadow> get thin => _copyWith(
      color: FxColors.blueGray400,
      blurRadius: 15,
      offset: const Offset(3, 3),
      spreadRadius: 5);

  ///Gives custom medium shadow
  static List<BoxShadow> get medium => _copyWith(
      color: FxColors.blueGray400,
      blurRadius: 15,
      offset: const Offset(7, 7),
      spreadRadius: 5);

  ///Gives custom thik shadow
  static List<BoxShadow> get thik => _copyWith(
        color: FxColors.blueGray400,
        blurRadius: 15,
        offset: const Offset(10, 10),
        spreadRadius: 5,
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
