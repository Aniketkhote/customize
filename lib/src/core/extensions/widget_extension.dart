import 'package:flutter/material.dart';

extension CenterExtensions on Widget {
  ///Wrap up any widget without using [center] widget
  ///
  ///Directly access [centered] widget using dot operator
  Widget centered({Key key}) => Center(key: key, child: this);
}
