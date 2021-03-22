import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///String extensions to get basic functionality on strings
extension StringExtensions on String {
  ///Checks [string] is letter or not and return [bool]
  bool get isString => RegExp("^[a-zA-Z]+").hasMatch(this);

  ///Checks [string] is Number or not and return [bool]
  bool get isNumber => RegExp("^[0-9]+").hasMatch(this);

  ///Checks [string] is valid email or not and return [bool]
  bool get isEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);

  ///Checks [string] is empty or null and return [bool]
  bool get isEmptyOrNull => this == null || isEmpty;

  ///Remove first element of [string]
  String get removeFirst => length > 1 ? substring(1, length) : "";

  ///Remove last element of [string]
  String get removeLast => length > 1 ? substring(0, length - 1) : "";

  ///Concatenate [string] with space
  String concat({@required String string}) => '$this $string';

  ///Convert string to [int]
  int get toInt => int.tryParse(this);

  ///Convert string to [double]
  double get toDouble => double.tryParse(this);

  ///Round off double to int if double is string
  int get round => isNotEmpty && isNumber ? toDouble.round() : null;

  ///Convert [string] into slug
  String get toSlug => toString().trim().toLowerCase().replaceAll(" ", "-");
}
