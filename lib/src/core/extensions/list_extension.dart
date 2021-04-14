import '../../fx_extensions.dart';

///List extension to entend Map functionality
extension ListExtensionson on List<dynamic> {
  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Merge list of lists into single list
  List<dynamic> get flatten => FxList.flatten(this);

  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Merge list of maps into single map
  Map<dynamic, dynamic> get flattenMap => FxList.flattenMap(this);

  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Get values from list of maps either passing key or not
  List<dynamic> getValues([dynamic key]) => FxList.getValues(this, key);

  ///Get sorted list
  List<dynamic> sorted([bool isDecending = false]) =>
      FxList.sorted(this, isDecending);

  ///Creates a new list with the elements of this that are not in other.
  List<dynamic> diff(List<dynamic> list) => FxList.diff(this, list);

  ///counts the occurrences of values in the list
  Map<dynamic, dynamic> get countBy => FxList.countBy(this);

  ///Removes elements from the list that do not have a specified item value
  ///
  ///that is not contained within the given list
  List<dynamic> whereIn(dynamic key, List<dynamic> params) =>
      FxList.whereIn(this, key, params);

  ///Removes elements from the list that have a specified item value
  ///
  ///that is not contained within the given list
  List<dynamic> whereNotIn(dynamic key, List<dynamic> params) =>
      FxList.whereNotIn(this, key, params);

  /// Filters the collection by determining if a specified item value is within a given range
  List<dynamic> whereBetween(dynamic key, num start, num end) =>
      FxList.whereBetween(this, key, start, end);

  ///Filters the collection by determining if a specified item value is outside of a given range
  List<dynamic> whereNotBetween(dynamic key, num start, num end) =>
      FxList.whereNotBetween(this, key, start, end);

  ///Get minimum number
  int get min => FxList.min(this);

  ///Get maximum number
  num get max => FxList.max(this);

  ///Get sum of numbers
  num get sum => FxList.sum(this);

  ///Get average of numbers
  num get avg => FxList.avg(this);

  ///Checks given key is exists or not
  bool containsInMap(dynamic key, dynamic value) =>
      FxList.containsInMap(this, key, value);

  ///Checks given key is exists or not
  bool containsKeyInMap(dynamic key) => FxList.containsKeyInMap(this, key);

  ///Checks given value is exists or not
  bool containsValueInMap(dynamic value) =>
      FxList.containsValueInMap(this, value);
}

class FxList {
  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Merge list of lists into single list
  static List<dynamic> flatten(List<dynamic> list) =>
      list.expand((dynamic i) => i).toList();

  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Merge list of maps into single map
  static Map<dynamic, dynamic> flattenMap(List<dynamic> list) {
    List<dynamic> _mapList = list.expand((dynamic map) => map.entries).toList();
    return Map<dynamic, dynamic>.fromIterable(_mapList,
        key: (dynamic v) => v.key, value: (dynamic v) => v.value);
  }

  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Get values from list of maps either passing key or not
  static List<dynamic> getValues(List<dynamic> list, [dynamic key]) {
    List<dynamic> _list = <dynamic>[];
    list.forEach((dynamic element) {
      if (element.containsKey(key)) {
        _list?.add(element[key]);
      } else {
        element.forEach((dynamic k, dynamic v) => _list?.add(v));
      }
    });
    return _list;
  }

  ///Get sorted list
  static List<dynamic> sorted(List<dynamic> list, [bool isDecending = false]) {
    list.sort();

    if (isDecending)
      return list.reversed.toList();
    else
      return list;
  }

  ///Creates a new list with the elements of this that are not in other.
  static List<dynamic> diff(List<dynamic> list1, List<dynamic> list2) {
    list1.removeWhere(
        (dynamic first) => list2.any((dynamic second) => second == first));
    return list1;
  }

  ///counts the occurrences of values in the list
  static Map<dynamic, dynamic> countBy(List<dynamic> list) {
    Map<dynamic, dynamic> _map;
    list.forEach(
        (dynamic x) => _map[x] = _map.containsKey(x) ? _map[x] + 1 : 1);
    return _map;
  }

  ///Removes elements from the list that do not have a specified item value
  ///
  ///that is not contained within the given list
  static List<dynamic> whereIn(
          List<dynamic> list, dynamic key, List<dynamic> params) =>
      null;

  ///Removes elements from the list that have a specified item value
  ///
  ///that is not contained within the given list
  static List<dynamic> whereNotIn(
      List<dynamic> list, dynamic key, List<dynamic> params) {
    params.forEach((dynamic param) =>
        list.removeWhere((dynamic map) => FxMap.contains(map, key, param)));
    return list;
  }

  /// Filters the collection by determining if a specified item value is within a given range
  static List<dynamic> whereBetween(
      List<dynamic> list, dynamic key, num start, num end) {
    List<dynamic> _list = <dynamic>[];

    list.forEach((dynamic element) {
      if (element.containsKey(key) && element[key] != null) {
        if (element[key] > start && element[key] < end) {
          _list?.add(element);
        }
      }
    });

    return _list;
  }

  /// Filters the list by determining if a specified item value is outside of a given range
  static List<dynamic> whereNotBetween(
      List<dynamic> list, dynamic key, num start, num end) {
    List<dynamic> _list = <dynamic>[];

    list.forEach((dynamic element) {
      if (element.containsKey(key) && element[key] != null) {
        if (element[key] < start || element[key] > end) {
          _list?.add(element);
        }
      }
    });

    return _list;
  }

  ///Get minimum number
  static int min(List<dynamic> list) {
    list.sort();
    return list.first;
  }

  ///Get maximum number
  static num max(List<dynamic> list) {
    list.sort();
    return list.last;
  }

  ///Get sum of numbers
  static num sum(List<dynamic> list) =>
      list.cast<num>().reduce((num a, num b) => a + b);

  ///Get average of numbers
  static num avg(List<dynamic> list) => list.sum / list.cast<num>().length;

  ///Checks given key is exists or not
  static bool containsInMap(List<dynamic> list, dynamic key, dynamic value) =>
      list.any((dynamic element) => FxMap.contains(element, key, value));

  ///Checks given key is exists or not
  static bool containsKeyInMap(List<dynamic> list, dynamic key) =>
      list.any((dynamic element) => element.containsKey(key));

  ///Checks given value is exists or not
  static bool containsValueInMap(List<dynamic> list, dynamic value) =>
      list.any((dynamic element) => element.containsValue(value));
}
