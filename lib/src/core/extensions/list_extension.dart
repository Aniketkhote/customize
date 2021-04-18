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

  ///The [pluck] method retrieves all of the values for a given key
  List<dynamic> pluck(dynamic key) => FxList.pluck(this, key);

  ///Get sorted list
  List<dynamic> sorted([bool isDesc = false]) => FxList.sorted(this, isDesc);

  ///The sortBy method sorts the list of objects by the given key.
  List<dynamic> sortBy(List<dynamic> list, dynamic key,
          [bool isDesc = false]) =>
      FxList.sortBy(this, key, isDesc);

  ///Creates a new list with the elements of this that are not in other.
  List<dynamic> diff(List<dynamic> list) => FxList.diff(this, list);

  ///Returns random value from this list
  dynamic get random => FxList.random(this);

  ///counts the occurrences of values in the list
  Map<dynamic, dynamic> get count => FxList.count(this);

  ///counts the occurrences of values in the list if condition satisified
  Map<dynamic, dynamic> countBy(dynamic Function(dynamic) fn) =>
      FxList.countBy(this, fn);

  ///Group by objects according to key/value pair
  Map<dynamic, List<dynamic>> groupBy(dynamic Function(dynamic) fn) =>
      FxList.groupBy(this, fn);

  ///Group list of objects according to key/value pair
  Map<dynamic, dynamic> groupByOnMap(String key) =>
      FxList.groupByOnMap(this, key);

  ///The chunk method breaks the list into multiple, smaller list of a given size
  List<dynamic> chunk(int size) => FxList.chunk(this, size);

  ///Gets only those values which is given
  List<dynamic> only(List<dynamic> keys) => FxList.only(this, keys);

  ///Removes elements from the list which is given
  List<dynamic> notOnly(List<dynamic> keys) => FxList.notOnly(this, keys);

  ///Removes elements from the list that do not have a specified item value
  ///
  ///that is not contained within the given list
  List<dynamic> whereIn(dynamic key, List<num> params) =>
      FxList.whereIn(this, key, params);

  ///Removes elements from the list that have a specified item value
  ///
  ///that is not contained within the given list
  List<dynamic> whereNotIn(dynamic key, List<num> params) =>
      FxList.whereNotIn(this, key, params);

  /// Filters the collection by determining if a specified item value is within a given range
  List<dynamic> whereBetween(dynamic key, num start, num end) =>
      FxList.whereBetween(this, key, start, end);

  ///Filters the collection by determining if a specified item value is outside of a given range
  List<dynamic> whereNotBetween(dynamic key, num start, num end) =>
      FxList.whereNotBetween(this, key, start, end);

  ///Get minimum number
  dynamic get min => FxList.min(this);

  ///Get maximum number
  dynamic get max => FxList.max(this);

  ///Get sum of numbers
  num get sum => FxList.sum(this);

  ///Get average of numbers
  num get avg => FxList.avg(this);

  ///Get median of numbers
  num get median => FxList.median(this);

  ///Get mode of numbers
  num get mode => FxList.mode(this);

  ///Checks given key/value is exists or not
  bool hasKeyValue(dynamic key, dynamic value) =>
      FxList.hasKeyValue(this, key, value);

  ///Checks given key is exists or not
  bool hasKey(dynamic key) => FxList.hasKey(this, key);

  ///Checks given value is exists or not
  bool hasValue(dynamic value) => FxList.hasValue(this, value);
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

  ///The [pluck] method retrieves all of the values for a given key
  static List<dynamic> pluck(List<dynamic> list, [dynamic key]) {
    List<dynamic> _list = <dynamic>[];
    list.forEach((dynamic element) => (element.containsKey(key))
        ? _list?.add(element[key])
        : element.forEach((dynamic k, dynamic v) => _list?.add(v)));
    return _list;
  }

  ///Get sorted list
  static List<dynamic> sorted(List<dynamic> list, [bool isDesc = false]) {
    list.sort();
    return isDesc ? list.reversed.toList() : list;
  }

  ///The sortBy method sorts the list of objects by the given key.
  static List<dynamic> sortBy(List<dynamic> list, dynamic key,
      [bool isDesc = false]) {
    list.sort((dynamic a, dynamic b) => a[key].compareTo(b[key]));

    return isDesc ? list.reversed.toList() : list;
  }

  ///Creates a new list with the elements of this that are not in other.
  static List<dynamic> diff(List<dynamic> list1, List<dynamic> list2) {
    list1.removeWhere(
        (dynamic first) => list2.any((dynamic second) => second == first));
    return list1;
  }

  ///Returns random value from this list
  static dynamic random(List<dynamic> list) => (list..shuffle()).first;

  ///counts the occurrences of values in the list
  static Map<dynamic, dynamic> count(List<dynamic> list) {
    Map<dynamic, dynamic> _map;
    list.forEach(
        (dynamic x) => _map[x] = _map.containsKey(x) ? _map[x] + 1 : 1);
    return _map;
  }

  ///counts the occurrences of values in the list if condition satisified
  static Map<dynamic, dynamic> countBy(
      Iterable<dynamic> itr, dynamic Function(dynamic) fn) {
    // ignore: always_specify_types
    return Map.fromIterable(itr.map(fn).toSet(),
        // ignore: always_specify_types
        value: (i) => itr.where((v) => fn(v) == i).length);
  }

  ///Group by objects according to key/value pair
  static Map<dynamic, List<dynamic>> groupBy(
      Iterable<dynamic> itr, dynamic Function(dynamic) fn) {
    // ignore: always_specify_types
    return Map.fromIterable(itr.map(fn).toSet(),
        // ignore: always_specify_types
        value: (i) => itr.where((v) => fn(v) == i).toList());
  }

  ///Group list of objects according to key/value pair
  static Map<dynamic, dynamic> groupByOnMap(List<dynamic> list, String key) {
    // ignore: always_specify_types
    return groupBy(list, (obj) => obj[key]);
  }

  ///The chunk method breaks the list into multiple, smaller list of a given size
  static List<dynamic> chunk(List<dynamic> list, int size) {
    List<dynamic> chunks = <dynamic>[];
    for (int i = 0; i < list.length; i += size) {
      chunks.add(
          list.sublist(i, i + size > list.length ? list.length : i + size));
    }
    return chunks;
  }

  ///Gets only those values which is given
  static List<dynamic> only(List<dynamic> list, List<dynamic> keys) {
    List<dynamic> _list = <dynamic>[];
    list.forEach((dynamic map) {
      Map<dynamic, dynamic> _map = <dynamic, dynamic>{};

      keys.forEach((dynamic key) {
        // ignore: always_specify_types
        if (map.containsKey(key)) _map.addAll({key: map[key]});
      });
      _list.forEach((dynamic map) {
        if (map.isNotEmpty) _list.add(map);
      });
    });

    return _list;
  }

  ///Removes elements from the list which is given
  static List<dynamic> notOnly(List<dynamic> list, List<dynamic> keys) {
    List<dynamic> _list = <dynamic>[];
    list.forEach((dynamic map) => keys.forEach((dynamic key) {
          if (map.containsKey(key)) map.remove(key);
        }));

    list.forEach((dynamic map) {
      if (map.isNotEmpty) _list.add(map);
    });

    return _list;
  }

  ///Removes elements from the list that do not have a specified item value
  ///
  ///that is not contained within the given list
  static List<dynamic> whereIn(
      List<dynamic> list, dynamic key, List<num> params) {
    List<dynamic> _list = <dynamic>[];

    params.forEach((dynamic param) {
      list.forEach((dynamic map) {
        if (FxMap.contains(map, key, param)) _list.add(map);
      });
    });

    return _list;
  }

  ///Removes elements from the list that have a specified item value
  ///
  ///that is not contained within the given list
  static List<dynamic> whereNotIn(
      List<dynamic> list, dynamic key, List<num> params) {
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
        if (element[key] > start && element[key] < end) _list?.add(element);
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
        if (element[key] < start || element[key] > end) _list?.add(element);
      }
    });

    return _list;
  }

  ///Get minimum number
  static dynamic min(List<dynamic> list) {
    list.sort();
    return list.first;
  }

  ///Get maximum number
  static dynamic max(List<dynamic> list) {
    list.sort();
    return list.last;
  }

  ///Get sum of numbers
  static num sum(List<num> list) =>
      list.cast<num>().reduce((num a, num b) => a + b);

  ///Get average of numbers
  static num avg(List<num> list) => sum(list) / list.cast<num>().length;

  ///Get median of numbers
  static num median(List<num> list) {
    num middle = list.length ~/ 2;
    if (list.length.isOdd)
      return list[middle];
    else
      return (list[middle - 1] + list[middle]) / 2.0;
  }

  ///Get mode of numbers
  static num mode(List<num> list) {
    num maxValue = 0.0;
    num maxCount = 0;

    for (num i = 0; i < list.length; ++i) {
      num count = 0;
      for (num j = 0; j < list.length; ++j) if (list[j] == list[i]) ++count;

      if (count > maxCount) {
        maxCount = count;
        maxValue = list[i];
      }
    }
    return maxValue;
  }

  ///Checks given key/value is exists or not
  static bool hasKeyValue(List<dynamic> list, dynamic key, dynamic value) =>
      list.any((dynamic element) => FxMap.contains(element, key, value));

  ///Checks given key is exists or not
  static bool hasKey(List<dynamic> list, dynamic key) =>
      list.any((dynamic element) => element.containsKey(key));

  ///Checks given value is exists or not
  static bool hasValue(List<dynamic> list, dynamic value) =>
      list.any((dynamic element) => element.containsValue(value));
}
