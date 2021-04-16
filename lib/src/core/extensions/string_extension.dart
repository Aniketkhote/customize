///String extensions to get basic functionality on strings
extension StringExtensions on String {
  ///Checks string with regex
  bool regex(String source) => FxString.regex(this, source);

  ///Checks [string] is letter or not and return [bool]
  bool get isAlphabet => FxString.isAlphabet(this);

  ///Checks [string] is Number or not and return [bool]
  bool get isNumber => FxString.isNumber(this);

  ///Checks [string] is valid email or not and return [bool]
  bool get isEmail => FxString.isEmail(this);

  ///Checks [string] is valid mobile number or not and return [bool]
  ///
  ///eg. 7xxxxxxxxxx, 8xxxxxxxxxx, 9xxxxxxxxxx
  bool get isMobileNumber => FxString.isMobileNumber(this);

  ///Check this string min length, if satisfied condition then return true
  bool minLength(int min) => FxString.minLength(this, min);

  ///Check this string max length, if satisfied condition then return true
  bool maxLength(int max) => FxString.maxLength(this, max);

  ///Check this string length between range, if satisfied condition then return true
  bool range(int min, int max) => FxString.range(this, min, max);

  ///Checks [string] is empty or null and return [bool]
  bool get isEmptyOrNull => FxString.isEmptyOrNull(this);

  ///Remove first element of [string]
  String removeFirst([int upto]) => FxString.removeFirst(this);

  ///Remove last element of [string]
  String removeLast([int upto]) => FxString.removeLast(this);

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
  int countBy(String string) => FxString.countBy(string);

  ///Convert string to [int]
  int get toInt => FxString.toInt(this);

  ///Convert string to [double]
  double get toDouble => FxString.toDouble(this);

  ///Round off double to int if double is string
  int get round => FxString.round(this);

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

  ///check string is image
  bool get isImage => FxString.isImage(this);

  ///check string is video
  bool get isVideo => FxString.isVideo(this);

  ///check string is audio
  bool get isAudio => FxString.isAudio(this);
}

class FxString {
  ///Checks string with regex
  static bool regex(String string, String source) =>
      RegExp(source).hasMatch(string);

  ///Checks [string] is letter or not and return [bool]
  static bool isAlphabet(String string) => regex(string, "^[a-zA-Z]+");

  ///Checks [string] is Number or not and return [bool]
  static bool isNumber(String string) => regex(string, "^[0-9]+");

  ///Checks [string] is valid email or not and return [bool]
  static bool isEmail(String string) => regex(string,
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  ///Checks [string] is valid mobile number or not and return [bool]
  ///
  ///eg. 7xxxxxxxxxx, 8xxxxxxxxxx, 9xxxxxxxxxx
  static bool isMobileNumber(String string) =>
      regex(string, "^([789]{1}[0-9]{9})");

  ///Check this string min length, if satisfied condition then return true
  static bool minLength(String string, int min) => string.length >= min;

  ///Check this string max length, if satisfied condition then return true
  static bool maxLength(String string, int max) => string.length <= max;

  ///Check this string length between range, if satisfied condition then return true
  static bool range(String string, int min, int max) =>
      string.length >= min && string.length <= max;

  ///Checks [string] is empty or null and return [bool]
  static bool isEmptyOrNull(String string) => string == null || string.isEmpty;

  ///Remove first element of [string]
  static String removeFirst(String string, [int upto]) =>
      string.minLength(2) ? string.substring(upto ?? 1, string.length) : "";

  ///Remove last element of [string]
  static String removeLast(String string, [int upto]) =>
      string.minLength(2) ? string.substring(0, string.length - upto ?? 1) : "";

  ///Removes all whitespace
  static String removeWhitespace(String string) => string.replaceAll(' ', '');

  ///Concatenate [string] with whitespace
  static String concat(String string, String concat) => '$string $concat';

  ///Replaces all but the last num runes of a string with the specified mask.
  static String mask(String str, {int upto = 4, String mask = '*'}) {
    return str.substring(str.length - upto).padLeft(str.length, mask);
  }

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
  static int countBy(String string) =>
      string.isEmptyOrNull ? 0 : string.allMatches(string).length;

  ///Convert string to [int]
  static int toInt(Object value) {
    if (value != null) return int.parse('$value');

    return 0;
  }

  ///Convert string to [double]
  static double toDouble(Object value) {
    if (value != null) return double.parse('$value') ?? 0.0;

    return 0;
  }

  ///Round off double to int if double is string
  static int round(String string) =>
      string.isNotEmpty && string.isNumber ? string.toDouble.round() : null;

  ///Convert [string] into slug
  static String toSlug(String string) =>
      string.toString().trim().toLowerCase().replaceAll(" ", "-");

  ///Converts all characters in this string to capital case.
  static String toCapitalCase(String string) {
    return string.isEmpty
        ? string
        : (string[0].toUpperCase() + string.substring(1));
  }

  ///Converts all first characters in this string to capital case and rest to the lower case.
  static String toTitleCase(String str) {
    return str
        .replaceAllMapped(
            RegExp(
                r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
            (Match m) =>
                "${m[0][0].toUpperCase()}${m[0].substring(1).toLowerCase()}")
        .replaceAll(RegExp(r'(_|-)+'), ' ');
  }

  ///Capitalize first letter of String and convert rest of string into lower case
  static String toSentenceCase(String string) =>
      string[0].toUpperCase() + string.substring(1).toLowerCase();

  ///check string is in Sentence case or not
  static bool isSentence(String string) {
    if (string == string.toSentenceCase()) return true;
    return false;
  }

  ///check string is in Title case or not
  static bool isTitle(String string) {
    if (string == string.toTitleCase()) return true;
    return false;
  }

  ///check string is in capital case or not
  static bool isCapital(String string) {
    if (string == string.toCapitalCase()) return true;
    return false;
  }

  ///check string is in lower case or not
  static bool isLower(String string) {
    if (string == string.toLowerCase()) return true;
    return false;
  }

  ///check string is in upper case or not
  static bool isUpper(String string) {
    if (string == string.toUpperCase()) return true;
    return false;
  }

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

  ///check string is image
  static bool isImage(String string) {
    String _imageExt = string.toLowerCase();
    return _imageExt.endsWith(".jpg") ||
        _imageExt.endsWith(".jpeg") ||
        _imageExt.endsWith(".png") ||
        _imageExt.endsWith(".svg");
  }

  ///check string is video
  static bool isVideo(String string) {
    String _videoExt = string.toLowerCase();
    return _videoExt.endsWith(".mp4") ||
        _videoExt.endsWith(".avi") ||
        _videoExt.endsWith(".mpeg") ||
        _videoExt.endsWith(".WEBM");
  }

  ///check string is audio
  static bool isAudio(String string) {
    String _audioExt = string.toLowerCase();
    return _audioExt.endsWith(".mp3") ||
        _audioExt.endsWith(".wav") ||
        _audioExt.endsWith(".aac") ||
        _audioExt.endsWith(".wma");
  }
}
