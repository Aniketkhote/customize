///String extensions to get basic functionality on strings
extension StringExtensions on String {
  ///Checks string with regex
  bool regex(String source) => RegExp(source).hasMatch(this);

  ///Checks [string] is letter or not and return [bool]
  bool get isAlphabet => RegExp("^[a-zA-Z]+").hasMatch(this);

  ///Checks [string] is Number or not and return [bool]
  bool get isNumber => RegExp("^[0-9]+").hasMatch(this);

  ///Checks [string] is valid email or not and return [bool]
  bool get isEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);

  ///Checks [string] is valid mobile number or not and return [bool]
  ///
  ///eg. 7xxxxxxxxxx, 8xxxxxxxxxx, 9xxxxxxxxxx
  bool get isMobileNumber => RegExp("^([789]{1}[0-9]{9})").hasMatch(this);

  ///Check this string min length, if satisfied condition then return true
  bool minLength(int min) => length >= min;

  ///Check this string max length, if satisfied condition then return true
  bool maxLength(int max) => length <= max;

  ///Check this string length between range, if satisfied condition then return true
  bool range(int min, int max) => length >= min && length <= max;

  ///Checks [string] is empty or null and return [bool]
  bool get isEmptyOrNull => this == null || isEmpty;

  ///Remove first element of [string]
  String removeFirst([int upto]) =>
      length > 1 ? substring(upto ?? 1, length) : "";

  ///Remove last element of [string]
  String removeLast([int upto]) =>
      length > 1 ? substring(0, length - upto ?? 1) : "";

  ///Removes all whitespace
  String get removeWhitespace => replaceAll(' ', '');

  ///Concatenate [string] with space
  String concat(String string) => '$this $string';

  ///Counts the number of occurrences of string
  Map<String, int> count(String str) {
    String _str = str.replaceAll(' ', '');

    Map<String, int> map = <String, int>{};

    for (int i = 0; i < _str.length; i++) {
      int count = map[_str[i]] ?? 0;
      map[_str[i]] = count + 1;
    }
    return map;
  }

  ///Counts the number of occurrences of value.
  int countBy(String string) =>
      string.isEmptyOrNull ? 0 : string.allMatches(this).length;

  ///Convert string to [int]
  int get toInt => int.tryParse(this);

  ///Convert string to [double]
  double get toDouble => double.tryParse(this);

  ///Round off double to int if double is string
  int get round => isNotEmpty && isNumber ? toDouble.round() : null;

  ///Convert [string] into slug
  String get toSlug => toString().trim().toLowerCase().replaceAll(" ", "-");

  ///Check image is svg or not
  bool get isSvg => toLowerCase().endsWith(".svg");

  ///Check image is png or not
  bool get isPng => toLowerCase().endsWith(".png");

  ///Check image is jpg or jpeg or not
  bool get isJpg =>
      toLowerCase().endsWith(".jpg") || toLowerCase().endsWith(".jpeg");

  ///Check file is pdf or not
  bool get isPDF => toLowerCase().endsWith(".pdf");

  ///check string is image
  bool get isImage {
    String _imageExt = toLowerCase();
    return _imageExt.endsWith(".jpg") ||
        _imageExt.endsWith(".jpeg") ||
        _imageExt.endsWith(".png") ||
        _imageExt.endsWith(".svg");
  }

  ///check string is video
  bool get isVideo {
    String _videoExt = toLowerCase();
    return _videoExt.endsWith(".mp4") ||
        _videoExt.endsWith(".avi") ||
        _videoExt.endsWith(".mpeg") ||
        _videoExt.endsWith(".WEBM");
  }

  ///check string is audio
  bool get isAudio {
    String _audioExt = toLowerCase();
    return _audioExt.endsWith(".mp3") ||
        _audioExt.endsWith(".wav") ||
        _audioExt.endsWith(".aac") ||
        _audioExt.endsWith(".wma");
  }
}
