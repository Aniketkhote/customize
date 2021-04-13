import '../../fx_extensions.dart';

///List extension to entend Map functionality
extension ListExtensionson on List<dynamic> {
  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Merge list of lists into single list
  List<dynamic> get flatten {
    return this.expand((dynamic i) => i).toList();
  }

  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Merge list of maps into single map
  Map<dynamic, dynamic> get flattenMap {
    List<dynamic> _mapList = this.expand((dynamic map) => map.entries).toList();
    return Map<dynamic, dynamic>.fromIterable(_mapList,
        key: (dynamic v) => v.key, value: (dynamic v) => v.value);
  }

  /// Expands each element of this [Iterable] into zero or more elements.
  ///
  ///Merge list of maps values into single list
  List<dynamic> get flattenMapToList {
    List<dynamic> _list;
    this.flattenMap.forEach((dynamic key, dynamic value) => _list.add(value));
    return _list;
  }

  ///Get sorted list
  List<dynamic> sorted([bool isDecending = false]) {
    this.sort();

    if (isDecending)
      return this.reversed.toList();
    else
      return this;
  }

  ///Get minimum number
  int get min {
    this.sort();
    return this.first;
  }

  ///Get maximum number
  num get max {
    this.sort();
    return this.last;
  }

  ///Get sum of numbers
  num get sum => this.cast<num>().reduce((num a, num b) => a + b);

  ///Get average of numbers
  num get avg => this.sum / this.cast<num>().length;

  ///Checks given key is exists or not
  bool containsKeyInMap(dynamic key) =>
      this.any((dynamic element) => element.containsKey(key));

  ///Checks given value is exists or not
  bool containsValueInMap(dynamic value) =>
      this.any((dynamic element) => element.containsValue(value));
}
