import '../../fx_extensions.dart';

///Map extension to entend Map functionality
extension MapExtensionson on Map<dynamic, dynamic> {
  ///Whether this map contains the given [key]/[value] pair.
  ///
  ///Returns true if any of the key / value pair in the map are equal.
  bool contains(dynamic key, dynamic value) => FxMap.contains(this, key, value);

  ///Returns the ID of the Map collection if exists otherwise return 0;
  dynamic get getId => FxMap.getId(this);

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
  int toInt(Object value) => FxString.toInt(value);

  ///Parse an object to double if not valid returns 0
  double toDouble(Object value) => FxString.toDouble(value);
}

class FxMap {
  static final bool defaultBool = false;
  static final int defaultInt = 0;
  static final double defaultDouble = 0;
  static final String defaultString = '';

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

  ///Returns the ID of the Map collection if exists otherwise return 0;
  static dynamic getId(Map<dynamic, dynamic> map) {
    return (map.containsKey('id') && map['id'] != null) ? map['id'] : 0;
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
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    if (data.containsKey(key)) if (data[key] is bool)
      return data[key] ?? defaultBool;
    return defaultBool;
  }

  /// Reads a [key] value of [int] type from [Map].
  ///
  /// If value/map  is NULL or not [int] type return default value [defaultInt]
  static int getInt(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    if (data.containsKey(key)) return FxString.toInt(data[key]);
    return defaultInt;
  }

  /// Reads a [key] value of [double] type from [Map].
  ///
  /// If value/map  is NULL or not [double] type return default value [defaultDouble]
  static double getDouble(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    if (data.containsKey(key)) return FxString.toDouble(data[key]);
    return defaultDouble;
  }

  /// Reads a [key] value of [String] type from [Map].
  ///
  /// If value/map  is NULL or not [String] type return default value [defaultString]
  static String getString(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    if (data.containsKey(key)) if (data[key] is String)
      return data[key] ?? defaultString;
    return defaultString;
  }

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value/map  is NULL or not [List] type return default value [defaultString]
  static List<dynamic> getList(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    if (data.containsKey(key)) if (data[key] is List<dynamic>)
      return data[key] ?? <dynamic>[];
    return <dynamic>[];
  }
}
