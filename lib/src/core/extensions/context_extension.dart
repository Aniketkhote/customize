import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  ///The size of the media in logical pixels (e.g, the size of the screen).
  ///
  ///This is same as [MediaQuery.of(context).size]
  Size get mediaQuerySize => MediaQuery.of(this).size;

  ///This is same as [MediaQuery.of(context).height]
  double get height => mediaQuerySize.height;

  ///This is same as [MediaQuery.of(context).width]
  double get width => mediaQuerySize.width;

  ///Similar to [MediaQuery.of(context).orientation]
  Orientation get orientation => MediaQuery.of(this).orientation;

  //// Check if device is on landscape mode
  bool get isLandscape => orientation == Orientation.landscape;

  ///Check if device is on portrait mode
  bool get isPortrait => orientation == Orientation.portrait;
}
