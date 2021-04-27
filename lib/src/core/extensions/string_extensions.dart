import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///String extensions to get basic functionality on strings
extension StringExtensions on String {
  ///match string with regex pattern
  bool regex(String source) => FxString.regex(this, source);

  ///Checks [string] is letter or not and return [bool]
  bool get isAlphabet => FxString.isAlphabet(this);

  ///Checks [string] is Number or not and return [bool]
  bool get isNumber => FxString.isNumber(this);

  ///Checks [string] is Alpha Numerical or not and return [bool]
  bool get isAlphaNumeric => FxString.isAlphaNumeric(this);

  ///Checks [string] is valid email or not and return [bool]
  bool get isEmail => FxString.isEmail(this);

  ///Checks [string] is valid mobile number or not and return [bool]
  ///
  ///eg. 7xxxxxxxxxx, 8xxxxxxxxxx, 9xxxxxxxxxx
  bool get isMobileNumber => FxString.isMobileNumber(this);

  ///Check this string min length, if satisfied condition then return true
  bool minLen(int min) => FxString.minLen(this, min);

  ///Check this string max length, if satisfied condition then return true
  bool maxLen(int max) => FxString.maxLen(this, max);

  ///Check this string length between range, if satisfied condition then return true
  bool range(int min, int max) => FxString.range(this, min, max);

  ///Checks [string] is empty or null and return [bool]
  bool get isEmptyOrNull => FxString.isEmptyOrNull(this);

  ///Checks [string] is neither empty nor null and return [bool]
  bool get isNotEmptyOrNull => !FxString.isEmptyOrNull(this);

  ///Remove first element of [string]
  String removeFirst([int? upto]) => FxString.removeFirst(this);

  ///Remove last element of [string]
  String removeLast([int? upto]) => FxString.removeLast(this);

  ///Removes all whitespace
  String get removeWhitespace => FxString.removeWhitespace(this);

  ///Concatenate [string] with whitespace
  String concat(String string) => FxString.concat(this, string);

  ///Replaces all but the last num runes of a string with the specified mask.
  String mask({int upto = 4, String mask = '*'}) =>
      FxString.mask(this, upto: upto, mask: mask);

  ///Counts the number of occurrences of string
  Map<String, int> get count => FxString.count(this);

  ///Counts the number of occurrences of value.
  int countBy(String str) => FxString.countBy(this, str);

  ///parse string to Json map<String,Dynamic>
  Map<String, dynamic>? toJsonMap() => jsonDecode(this);

  ///Convert string to [int]
  int get toInt => FxString.toInt(this);

  ///Convert string to [double]
  double get toDouble => FxString.toDouble(this);

  ///Round off double to int if double is string
  int? get round => FxString.round(this);

  ///Get file name from this
  String get fileName => FxString.fileName(this);

  ///Get file extension from this
  String get fileExt => FxString.fileExt(this);

  ///Get file path without file name from this
  String get filePath => FxString.filePath(this);

  ///Convert [string] into slug
  String get toSlug => FxString.toSlug(this);

  ///Converts all characters in this string to capital case.
  String toCapitalCase() => FxString.toCapitalCase(this);

  ///Converts all first characters in this string to capital case and rest to the lower case.
  String toTitleCase() => FxString.toTitleCase(this);

  ///Capitalize first letter of String and convert rest of string into lower case
  String toSentenceCase() => FxString.toSentenceCase(this);

  ///check string is in Sentence case or not
  bool get isSentence => FxString.isSentence(this);

  ///check string is in title case or not
  bool get isTitle => FxString.isTitle(this);

  ///check string is in capital case or not
  bool get isCapital => FxString.isCapital(this);

  ///check string is in lower case or not
  bool isLower(String string) => FxString.isLower(string);

  ///check string is in upper case or not
  bool isUpper(String string) => FxString.isUpper(string);

  ///Check image is svg or not
  bool get isSvg => FxString.isSvg(this);

  ///Check image is png or not
  bool get isPng => FxString.isPng(this);

  ///Check image is jpg or jpeg or not
  bool get isJpg => FxString.isJpg(this);

  ///Check file is pdf or not
  bool get isPDF => FxString.isPDF(this);

  ///Check file is doc or not
  bool get isDoc => FxString.isDoc(this);

  ///Check file is ppt or not
  bool get isPPT => FxString.isPPT(this);

  ///Check file is csv or not
  bool get isCsv => FxString.isCsv(this);

  ///Check file is text or not
  bool get isTxt => FxString.isTxt(this);

  ///check string is image
  bool get isImage => FxString.isImage(this);

  ///check string is video
  bool get isVideo => FxString.isVideo(this);

  ///check string is audio
  bool get isAudio => FxString.isAudio(this);

  ///Convert [string] to [Text] widget
  Text text() => Text(this);
}

/// Custom string methods
class FxString {
  ///match string with regex pattern
  static bool regex(String string, String source) =>
      RegExp(source).hasMatch(string);

  ///Checks [string] is letter or not and return [bool]
  static bool isAlphabet(String string) => regex(string, "[a-zA-Z]+");

  ///Checks [string] is Number or not and return [bool]
  static bool isNumber(String string) => regex(string, "[0-9]+");

  ///Checks [string] is Alpha Numerical or not and return [bool]
  static bool isAlphaNumeric(String string) => regex(string, "[a-zA-z0-9]+");

  ///Checks [string] is valid email or not and return [bool]
  static bool isEmail(String string) => regex(string,
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  ///Checks [string] is valid mobile number or not and return [bool]
  ///
  ///eg. 7xxxxxxxxxx, 8xxxxxxxxxx, 9xxxxxxxxxx
  static bool isMobileNumber(String string) =>
      regex(string, "^([789]{1}[0-9]{9})");

  ///Check this string min length, if satisfied condition then return true
  static bool minLen(String string, int min) => string.length >= min;

  ///Check this string max length, if satisfied condition then return true
  static bool maxLen(String string, int max) => string.length <= max;

  ///Check this string length between range, if satisfied condition then return true
  static bool range(String string, int min, int max) =>
      string.length >= min && string.length <= max;

  ///Checks [string] is empty or null and return [bool]
  static bool isEmptyOrNull(String? string) => string?.isEmpty ?? true;

  ///Remove first element of [string]
  static String removeFirst(String string, [int? upto]) =>
      string.minLen(2) ? string.substring(upto ?? 1, string.length) : "";

  ///Remove last element of [string]
  static String removeLast(String string, [int? upto]) =>
      string.minLen(2) ? string.substring(0, string.length - upto!) : "";

  ///Removes all whitespace
  static String removeWhitespace(String string) => string.replaceAll(' ', '');

  ///Concatenate [string] with whitespace
  static String concat(String string, String concat) => '$string $concat';

  ///Replaces all but the last num runes of a string with the specified mask.
  static String mask(String str, {int upto = 4, String mask = '*'}) =>
      str.substring(str.length - upto).padLeft(str.length, mask);

  ///Counts the number of occurrences of string
  static Map<String, int> count(String str) {
    String _str = str.removeWhitespace;

    Map<String, int> map = <String, int>{};

    for (int i = 0; i < _str.length; i++) {
      int count = map[_str[i]] ?? 0;
      map[_str[i]] = count + 1;
    }
    return map;
  }

  ///Counts the number of occurrences of value.
  static int countBy(String string, String str) =>
      str.isEmptyOrNull ? 0 : str.allMatches(string).length;

  ///Convert string to [int]
  static int toInt(Object? value) => (value != null) ? int.parse('$value') : 0;

  ///Convert string to [double]
  static double toDouble(Object? value) =>
      (value != null) ? double.parse('$value') : 0.0;

  ///Round off double to int if double is string
  static int? round(String string) => string.isNotEmptyOrNull && string.isNumber
      ? string.toDouble.round()
      : null;

  ///Get file name from this
  static String fileName(String path) =>
      path.split(Platform.pathSeparator).last;

  ///Get file extension from this
  static String fileExt(String path) => path.fileName.split('.').last;

  ///Get file path without file name from this
  static String filePath(String path) => path.removeLast(path.fileName.length);

  ///Convert [string] into slug
  static String toSlug(String string) =>
      string.trim().toLowerCase().replaceAll(" ", "-");

  ///Converts all characters in this string to capital case.
  static String toCapitalCase(String string) =>
      string[0].toUpperCase() + string.substring(1);

  ///Converts all first characters in this string to capital case and rest to the lower case.
  static String toTitleCase(String str) => str
      .replaceAllMapped(
          RegExp(
              r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
          (Match m) =>
              "${m[0]![0].toUpperCase()}${m[0]!.substring(1).toLowerCase()}")
      .replaceAll(RegExp(r'(_|-)+'), ' ');

  ///Capitalize first letter of String and convert rest of string into lower case
  static String toSentenceCase(String string) =>
      string[0].toUpperCase() + string.substring(1).toLowerCase();

  ///check string is in Sentence case or not
  static bool isSentence(String string) =>
      string == string.toSentenceCase() ? true : false;

  ///check string is in Title case or not
  static bool isTitle(String string) =>
      string == string.toTitleCase() ? true : false;

  ///check string is in capital case or not
  static bool isCapital(String string) =>
      string == string.toCapitalCase() ? true : false;

  ///check string is in lower case or not
  static bool isLower(String string) =>
      string == string.toLowerCase() ? true : false;

  ///check string is in upper case or not
  static bool isUpper(String string) =>
      string == string.toUpperCase() ? true : false;

  ///Check image is svg or not
  static bool isSvg(String string) => string.toLowerCase().endsWith(".svg");

  ///Check image is png or not
  static bool isPng(String string) => string.toLowerCase().endsWith(".png");

  ///Check image is jpg or jpeg or not
  static bool isJpg(String string) =>
      string.toLowerCase().endsWith(".jpg") ||
      string.toLowerCase().endsWith(".jpeg");

  ///Check file is pdf or not
  static bool isPDF(String string) => string.toLowerCase().endsWith(".pdf");

  ///Check file is doc or not
  static bool isDoc(String string) =>
      string.toLowerCase().endsWith(".doc") ||
      string.toLowerCase().endsWith(".docx");

  ///Check file is ppt or not
  static bool isPPT(String string) => string.toLowerCase().endsWith(".ppt");

  ///Check file is csv or not
  static bool isCsv(String string) => string.toLowerCase().endsWith(".csv");

  ///Check file is text or not
  static bool isTxt(String string) => string.toLowerCase().endsWith(".txt");

  ///check string is image
  static bool isImage(String string) {
    String _ext = string.toLowerCase();
    return _ext.isJpg || _ext.isPng || _ext.isSvg;
  }

  ///check string is video
  static bool isVideo(String string) {
    String _ext = string.toLowerCase();
    return _ext.endsWith(".mp4") ||
        _ext.endsWith(".avi") ||
        _ext.endsWith(".mpeg") ||
        _ext.endsWith(".WEBM");
  }

  ///check string is audio
  static bool isAudio(String string) {
    String _ext = string.toLowerCase();
    return _ext.endsWith(".mp3") ||
        _ext.endsWith(".wav") ||
        _ext.endsWith(".aac") ||
        _ext.endsWith(".wma");
  }
}
