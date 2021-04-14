///Map extension to entend Map functionality
extension MapExtensionson on Map<dynamic, dynamic> {
  ///Whether this map contains the given [key]/[value] pair.
  ///
  ///Returns true if any of the key / value pair in the map are equal.
  bool contains(dynamic key, dynamic value) => FxMap.contains(this, key, value);

  ///Returns all entries of this map.
  ///
  ///if first map keys are not in second map.
  Map<dynamic, dynamic> diffKeys(Map<dynamic, dynamic> map) =>
      FxMap.diffKeys(this, map);

  ///Returns all entries of this map.
  ///
  ///if first map values are not in second map.
  Map<dynamic, dynamic> diffValues(Map<dynamic, dynamic> map) =>
      FxMap.diffValues(this, map);

  /// Reads a [key] value of [bool] type from [Map].
  ///
  /// If value/map is NULL or not [bool] type return default value [defaultBool]
  bool getBool(String key) => FxMap.getBool(this, key);

  /// Reads a [key] value of [int] type from [Map].
  ///
  /// If value/map  is NULL or not [int] type return default value [defaultInt]
  int getInt(String key) => FxMap.getInt(this, key);

  /// Reads a [key] value of [double] type from [Map].
  ///
  /// If value/map  is NULL or not [double] type return default value [defaultDouble]
  double getDouble(String key) => FxMap.getDouble(this, key);

  /// Reads a [key] value of [String] type from [Map].
  ///
  /// If value/map  is NULL or not [String] type return default value [defaultString]
  String getString(String key) => FxMap.getString(this, key);

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value/map  is NULL or not [List] type return default value [defaultString]
  List<T> getList<T>(String key) => FxMap.getList(this, key);

  ///Parse an object to int if not valid returns 0
  int toInt(Object value) => FxMap.toInt(value);

  ///Parse an object to double if not valid returns 0
  double toDouble(Object value) => FxMap.toDouble(value);
}

class FxMap {
  static bool _defaultBool = false;
  static int _defaultInt = 0;
  static double _defaultDouble = 0;
  static String _defaultString = '';

  ///Whether this map contains the given [key]/[value] pair.
  ///
  ///Returns true if any of the key / value pair in the map are equal.
  static bool contains(Map<dynamic, dynamic> map, dynamic key, dynamic value) {
    bool isContain = false;
    map.forEach((dynamic k, dynamic v) {
      if (k == key && v == value) isContain = true;
    });

    return isContain;
  }

  ///Returns all entries of this map.
  ///
  ///if first map keys are not in second map.
  static Map<dynamic, dynamic> diffKeys(
      Map<dynamic, dynamic> map1, Map<dynamic, dynamic> map2) {
    map1.removeWhere((dynamic key, dynamic value) => map2.containsKey(key));
    return map1;
  }

  ///Returns all entries of this map.
  ///
  ///if first map values are not in second map.
  static Map<dynamic, dynamic> diffValues(
      Map<dynamic, dynamic> map1, Map<dynamic, dynamic> map2) {
    map1.removeWhere((dynamic key, dynamic value) => map2.containsValue(value));
    return map1;
  }

  /// Reads a [key] value of [bool] type from [Map].
  ///
  /// If value/map is NULL or not [bool] type return default value [defaultBool]
  static bool getBool(Map<dynamic, dynamic> map, String key) {
    if (map == null) map = <dynamic, dynamic>{};

    if (map.containsKey(key)) if (map[key] is bool)
      return map[key] ?? _defaultBool;
    return _defaultBool;
  }

  /// Reads a [key] value of [int] type from [Map].
  ///
  /// If value/map  is NULL or not [int] type return default value [defaultInt]
  static int getInt(Map<dynamic, dynamic> map, String key) {
    if (map == null) map = <dynamic, dynamic>{};

    if (map.containsKey(key)) return toInt(map[key]);
    return _defaultInt;
  }

  /// Reads a [key] value of [double] type from [Map].
  ///
  /// If value/map  is NULL or not [double] type return default value [defaultDouble]
  static double getDouble(Map<dynamic, dynamic> map, String key) {
    if (map == null) map = <dynamic, dynamic>{};

    if (map.containsKey(key)) return toDouble(map[key]);
    return _defaultDouble;
  }

  /// Reads a [key] value of [String] type from [Map].
  ///
  /// If value/map  is NULL or not [String] type return default value [defaultString]
  static String getString(Map<dynamic, dynamic> map, String key) {
    if (map == null) map = <dynamic, dynamic>{};

    if (map.containsKey(key)) if (map[key] is String)
      return map[key] ?? _defaultString;
    return _defaultString;
  }

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value/map  is NULL or not [List] type return default value [defaultString]
  static List<T> getList<T>(Map<dynamic, dynamic> map, String key) {
    if (map == null) map = <T, T>{};

    if (map.containsKey(key)) if (map[key] is List<T>) return map[key] ?? <T>[];
    return <T>[];
  }

  ///Parse an object to int if not valid returns 0
  static int toInt(Object value) {
    if (value != null) {
      try {
        return int.parse(value);
      } on Exception catch (e, s) {
        print("toInt Exception : $e\n$s");
      }
    }
    print("Error in toInt $value");
    return 0;
  }

  ///Parse an object to double if not valid returns 0
  static double toDouble(Object value) {
    if (value != null) {
      try {
        return double.parse(value) ?? 0.0;
      } on Exception catch (e, s) {
        print("toDouble Exception : $e\n$s");
      }
    }
    print("Error in toDouble $value");
    return 0;
  }
}
