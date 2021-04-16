import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

///BuildContext extension
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

  ///Check [Platform] is Android if it is return true otherwise false
  bool get isAndroid => Platform.isAndroid;

  ///Check [Platform] is Fuchsia if it is return true otherwise false
  bool get isFuchsia => Platform.isFuchsia;

  ///Check [Platform] is IOS if it is return true otherwise false
  bool get isIOS => Platform.isIOS;

  ///Check [Platform] is Linux if it is return true otherwise false
  bool get isLinux => Platform.isLinux;

  ///Check [Platform] is MacOS if it is return true otherwise false
  bool get isMacOS => Platform.isMacOS;

  ///Check [Platform] is Windows if it is return true otherwise false
  bool get isWindows => Platform.isWindows;
}
