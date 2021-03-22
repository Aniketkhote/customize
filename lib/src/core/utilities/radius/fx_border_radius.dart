import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///Border radius to easliy get predefined radius.
class FxRadius {
  ///Gives [BorderRadius] for each corner of a rectangle.
  static BorderRadius radius({
    double topLeft,
    double topRight,
    double bottomLeft,
    double bottomRight,
    double allSide,
  }) =>
      _copyWith(
        allSide: allSide,
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
      );

  ///Gives [BorderRadius] 5 for all sides
  static BorderRadius get radius5 => _copyWith(allSide: 5);

  ///Gives [BorderRadius] 10 for all sides
  static BorderRadius get radius10 => _copyWith(allSide: 10);

  ///Gives [BorderRadius] 20 for all sides
  static BorderRadius get radius20 => _copyWith(allSide: 20);

  ///Gives [BorderRadius] 30 for all sides
  static BorderRadius get radius30 => _copyWith(allSide: 30);

  ///Gives [BorderRadius] 50 for all sides
  static BorderRadius get radius50 => _copyWith(allSide: 50);

  ///Gives [BorderRadius] 5 for top left side
  static BorderRadius get radiusTL5 => _copyWith(topLeft: 5);

  ///Gives [BorderRadius] 10 for top left side
  static BorderRadius get radiusTL10 => _copyWith(topLeft: 10);

  ///Gives [BorderRadius] 20 for top left side
  static BorderRadius get radiusTL20 => _copyWith(topLeft: 20);

  ///Gives [BorderRadius] 30 for top left side
  static BorderRadius get radiusTL30 => _copyWith(topLeft: 30);

  ///Gives [BorderRadius] 50 for top left side
  static BorderRadius get radiusTL50 => _copyWith(topLeft: 50);

  ///Gives [BorderRadius] 5 for top right side
  static BorderRadius get radiusTR5 => _copyWith(topRight: 5);

  ///Gives [BorderRadius] 10 for top right side
  static BorderRadius get radiusTR10 => _copyWith(topRight: 10);

  ///Gives [BorderRadius] 20 for top right side
  static BorderRadius get radiusTR20 => _copyWith(topRight: 20);

  ///Gives [BorderRadius] 30 for top right side
  static BorderRadius get radiusTR30 => _copyWith(topRight: 30);

  ///Gives [BorderRadius] 50 for top right side
  static BorderRadius get radiusTR50 => _copyWith(topRight: 50);

  ///Gives [BorderRadius] 5 for bottom left side
  static BorderRadius get radiusBL5 => _copyWith(bottomLeft: 5);

  ///Gives [BorderRadius] 10 for bottom left side
  static BorderRadius get radiusBL10 => _copyWith(bottomLeft: 10);

  ///Gives [BorderRadius] 20 for bottom left side
  static BorderRadius get radiusBL20 => _copyWith(bottomLeft: 20);

  ///Gives [BorderRadius] 30 for bottom left side
  static BorderRadius get radiusBL30 => _copyWith(bottomLeft: 30);

  ///Gives [BorderRadius] 50 for bottom left side
  static BorderRadius get radiusBL50 => _copyWith(bottomLeft: 50);

  ///Gives [BorderRadius] 5 for bottom right side
  static BorderRadius get radiusBR5 => _copyWith(bottomRight: 5);

  ///Gives [BorderRadius] 10 for bottom right side
  static BorderRadius get radiusBR10 => _copyWith(bottomRight: 10);

  ///Gives [BorderRadius] 20 for bottom right side
  static BorderRadius get radiusBR20 => _copyWith(bottomRight: 20);

  ///Gives [BorderRadius] 30 for bottom right side
  static BorderRadius get radiusBR30 => _copyWith(bottomRight: 30);

  ///Gives [BorderRadius] 50 for bottom right side
  static BorderRadius get radiusBR50 => _copyWith(bottomRight: 50);

  static BorderRadius _copyWith({
    double topLeft,
    double topRight,
    double bottomLeft,
    double bottomRight,
    double allSide,
  }) =>
      BorderRadius.only(
        topLeft: Radius.circular(topLeft ?? allSide ?? 30.00),
        topRight: Radius.circular(topRight ?? allSide ?? 30.00),
        bottomLeft: Radius.circular(bottomLeft ?? allSide ?? 30.00),
        bottomRight: Radius.circular(bottomRight ?? allSide ?? 30.00),
      );
}
