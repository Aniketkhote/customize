import 'package:flutter/material.dart';

///Map extension to entend Map functionality
extension MapExtensionson on Map<dynamic, dynamic> {
  ///Whether this map contains the given [key]/[value] pair.
  ///
  ///Returns true if any of the key / value pair in the map are equal.
  bool contains({@required String key, @required dynamic value}) {
    bool isContain = false;

    this.forEach((dynamic k, dynamic v) {
      if (k.toString().toLowerCase() == key.toString().toLowerCase() &&
          v.toString().toLowerCase() == value.toString().toLowerCase())
        isContain = true;
    });

    return isContain;
  }

  ///Returns all entries of this map.
  ///
  ///if first map keys are not in second map.
  Map<dynamic, dynamic> diffKeys(Map<dynamic, dynamic> map) {
    this.removeWhere((dynamic key, dynamic value) => map.containsKey(key));
    return this;
  }

  ///Returns all entries of this map.
  ///
  ///if first map values are not in second map.
  Map<dynamic, dynamic> diffValues(Map<dynamic, dynamic> map) {
    this.removeWhere((dynamic key, dynamic value) => map.containsValue(value));
    return this;
  }
}
