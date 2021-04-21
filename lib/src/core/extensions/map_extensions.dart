import '../../fx_extensions.dart';

///Map extension to extend Map functionality
extension MapExtensions on Map<dynamic, dynamic> {
  ///Check map is either empty or null
  bool get isEmptyOrNull => FxMap.isEmptyOrNull(this);

  ///Check map is neither empty nor null
  bool get isNotEmptyOrNull => FxMap.isNotEmptyOrNull(this);

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

///Custom Methods on Map
class FxMap {
  static final bool defaultBool = false;
  static final int defaultInt = 0;
  static final double defaultDouble = 0;
  static final String defaultString = '';

  ///Check map is either empty or null
  static bool isEmptyOrNull(Map<dynamic, dynamic> map) =>
      map.isEmpty || map == null;

  ///Check map is neither empty nor null
  static bool isNotEmptyOrNull(Map<dynamic, dynamic> map) => !map.isEmptyOrNull;

  ///Whether this map contains the given [key]/[value] pair.
  ///
  ///Returns true if any of the key / value pair in the map are equal.
  static bool contains(Map<dynamic, dynamic> map, dynamic key, dynamic value) {
    map.forEach((dynamic k, dynamic v) {
      if (k == key && v == value) return true;
    });
    return false;
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

    return (data.containsKey(key) && data[key] is bool)
        ? data[key] ?? defaultBool
        : defaultBool;
  }

  /// Reads a [key] value of [int] type from [Map].
  ///
  /// If value/map  is NULL or not [int] type return default value [defaultInt]
  static int getInt(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    return data.containsKey(key)
        ? FxString.toInt(data[key]) ?? defaultInt
        : defaultInt;
  }

  /// Reads a [key] value of [double] type from [Map].
  ///
  /// If value/map  is NULL or not [double] type return default value [defaultDouble]
  static double getDouble(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    return data.containsKey(key)
        ? FxString.toDouble(data[key]) ?? defaultDouble
        : defaultDouble;
  }

  /// Reads a [key] value of [String] type from [Map].
  ///
  /// If value/map  is NULL or not [String] type return default value [defaultString]
  static String getString(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    return (data.containsKey(key) && data[key] is String)
        ? data[key] ?? defaultString
        : defaultString;
  }

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value/map  is NULL or not [List] type return default value [defaultString]
  static List<dynamic> getList(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    return (data.containsKey(key) && data[key] is List<dynamic>)
        ? data[key] ?? <dynamic>[]
        : <dynamic>[];
  }
}
