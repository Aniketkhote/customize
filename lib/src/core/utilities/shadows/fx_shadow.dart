import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../colors/fx_colors.dart';

class FxShadow {
  ///Sets Custom single shadow.
  static List<BoxShadow> shadow({
    Color color,
    double blurRadius,
    Offset offset,
  }) =>
      _copyWith(blurRadius: blurRadius, color: color, offset: offset);

  ///Gives custom normal shadow
  static List<BoxShadow> get normal => _copyWith(
      color: FxColors.blueGray400, blurRadius: 15, offset: Offset(5, 5));

  ///Gives custom thin shadow
  static List<BoxShadow> get thin => _copyWith(
      color: FxColors.blueGray400, blurRadius: 15, offset: Offset(3, 3));

  ///Gives custom medium shadow
  static List<BoxShadow> get medium => _copyWith(
      color: FxColors.blueGray400, blurRadius: 15, offset: Offset(7, 7));

  ///Gives custom thik shadow
  static List<BoxShadow> get thik => _copyWith(
      color: FxColors.blueGray400, blurRadius: 15, offset: Offset(10, 10));

  static List<BoxShadow> _copyWith({
    Color color,
    double blurRadius,
    double spreadRadius,
    Offset offset,
  }) =>
      [
        BoxShadow(
          blurRadius: blurRadius,
          color: color,
          offset: offset,
          spreadRadius: spreadRadius,
        )
      ];
}
