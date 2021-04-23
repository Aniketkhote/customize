import '../../fx_extensions.dart';

///Map extension to extend Map functionality
extension MapExtensions on Map<dynamic, dynamic> {
  ///Check map is either empty or null
  ///Example:
  ///```dart
  ///map.isEmptyOrNull // false
  ///```
  bool get isEmptyOrNull => FxMap.isEmptyOrNull(this);

  ///Check map is neither empty nor null
  ///Example:
  ///```dart
  ///map.isNotEmptyOrNull // true
  ///```
  bool get isNotEmptyOrNull => FxMap.isNotEmptyOrNull(this);

  ///Whether this map contains the given [key]/[value] pair.
  ///
  ///Returns true if any of the key / value pair in the map are equal.
  ///Example:
  ///```dart
  ///map.contains("key","value") // true
  ///```
  bool contains(dynamic key, dynamic value) => FxMap.contains(this, key, value);

  ///Returns the ID of the object if exists otherwise return 0;
  ///Example:
  ///```dart
  ///map.getId // 111
  ///```
  dynamic get getId => FxMap.getId(this);

  ///Returns all entries of this map according to keys.
  ///
  ///which is not in second map.
  ///Example:
  ///```dart
  ///map.diffKeys(map2)
  ///```
  Map<dynamic, dynamic> diffKeys(Map<dynamic, dynamic> map) =>
      FxMap.diffKeys(this, map);

  ///Returns all entries of this map according to values.
  ///
  ///which is not in second map.
  ///Example:
  ///```dart
  ///map.diffValues(map2)
  ///```
  Map<dynamic, dynamic> diffValues(Map<dynamic, dynamic> map) =>
      FxMap.diffValues(this, map);

  /// Reads a [key] value of [bool] type from [Map].
  ///
  /// If value/map is NULL or not [bool] type return default value [defaultBool]
  /// Example:
  ///```dart
  ///map.getBool("isAdmin") // true
  ///```
  bool getBool(String key) => FxMap.getBool(this, key);

  /// Reads a [key] value of [int] type from [Map].
  ///
  /// If value/map  is NULL or not [int] type return default value [defaultInt]
  /// Example:
  ///```dart
  ///map.getInt("id") // 11
  ///```
  int getInt(String key) => FxMap.getInt(this, key);

  /// Reads a [key] value of [double] type from [Map].
  ///
  /// If value/map  is NULL or not [double] type return default value [defaultDouble]
  /// Example:
  ///```dart
  ///map.getDouble("price") // 27.32
  ///```
  double getDouble(String key) => FxMap.getDouble(this, key);

  /// Reads a [key] value of [String] type from [Map].
  ///
  /// If value/map  is NULL or not [String] type return default value [defaultString]
  /// Example:
  ///```dart
  ///map.getString("username") // thor
  ///```
  String getString(String key) => FxMap.getString(this, key);

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value/map  is NULL or not [List] type return default value [defaultString]
  /// Example:
  ///```dart
  ///map.getList(productList) // return list if exists otherwise retrun empty list
  ///```
  List<T> getList<T>(String key) => FxMap.getList(this, key);
}

///Custom Methods on Map
class FxMap {
  static final bool defaultBool = false;
  static final int defaultInt = 0;
  static final double defaultDouble = 0;
  static final String defaultString = '';

  ///Check map is either empty or null
  ///Example:
  ///```dart
  ///isEmptyOrNull(map) // false
  ///```
  static bool isEmptyOrNull(Map<dynamic, dynamic> map) =>
      map.isEmpty || map == null;

  ///Check map is neither empty nor null
  ///Example:
  ///```dart
  ///isNotEmptyOrNull(map) // true
  ///```
  static bool isNotEmptyOrNull(Map<dynamic, dynamic> map) => !map.isEmptyOrNull;

  ///Whether this map contains the given [key]/[value] pair.
  ///
  ///Returns true if any of the key / value pair in the map are equal.
  ///Example:
  ///```dart
  ///contains(map, "key","value") // true
  ///```
  static bool contains(Map<dynamic, dynamic> map, dynamic key, dynamic value) {
    map.forEach((dynamic k, dynamic v) {
      if (k == key && v == value) return true;
    });
    return false;
  }

  ///Returns the ID of the object if exists otherwise return 0;
  ///Example:
  ///```dart
  ///getId(map) // 111
  ///```
  static dynamic getId(Map<dynamic, dynamic> map) {
    return (map.containsKey('id') && map['id'] != null) ? map['id'] : 0;
  }

  ///Returns all entries of this map according to keys.
  ///
  ///which is not in second map.
  ///Example:
  ///```dart
  ///diffKeys(map, map2)
  ///```
  static Map<dynamic, dynamic> diffKeys(
      Map<dynamic, dynamic> map1, Map<dynamic, dynamic> map2) {
    map1.removeWhere((dynamic key, dynamic value) => map2.containsKey(key));
    return map1;
  }

  ///Returns all entries of this map according to values.
  ///
  ///which is not in second map.
  ///Example:
  ///```dart
  ///diffValues(map,map2)
  ///```
  static Map<dynamic, dynamic> diffValues(
      Map<dynamic, dynamic> map1, Map<dynamic, dynamic> map2) {
    map1.removeWhere((dynamic key, dynamic value) => map2.containsValue(value));
    return map1;
  }

  /// Reads a [key] value of [bool] type from [Map].
  ///
  /// If value/map is NULL or not [bool] type return default value [defaultBool]
  /// Example:
  ///```dart
  ///getBool(map,"isAdmin") // true
  ///```
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
  /// Example:
  ///```dart
  ///getInt(map, "id") // 11
  ///```
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
  /// Example:
  ///```dart
  ///getDouble(map,"price") // 27.32
  ///```
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
  /// Example:
  ///```dart
  ///getString(map,"username") // thor
  ///```
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
  /// Example:
  ///```dart
  ///getList(map, productList) // return list if exists otherwise retrun empty list
  ///```
  static List<dynamic> getList(Map<dynamic, dynamic> map, String key) {
    Map<dynamic, dynamic> data = map;
    data ??= <dynamic, dynamic>{};

    return (data.containsKey(key) && data[key] is List<dynamic>)
        ? data[key] ?? <dynamic>[]
        : <dynamic>[];
  }
}
