import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utilities/colors/fx_colors.dart';

mixin FxColorMixin<T> {
  T _childColor;

  @protected
  Color fxColor;
  @protected
  void setChildColor(T child) {
    _childColor = child;
  }

  ///Blue Gray
  T get blueGray50 =>
      _setChildColor(color: FxColors.blueGray50, child: _childColor);
  T get blueGray100 =>
      _setChildColor(color: FxColors.blueGray100, child: _childColor);
  T get blueGray200 =>
      _setChildColor(color: FxColors.blueGray200, child: _childColor);
  T get blueGray300 =>
      _setChildColor(color: FxColors.blueGray300, child: _childColor);
  T get blueGray400 =>
      _setChildColor(color: FxColors.blueGray400, child: _childColor);
  T get blueGray500 =>
      _setChildColor(color: FxColors.blueGray500, child: _childColor);
  T get blueGray600 =>
      _setChildColor(color: FxColors.blueGray600, child: _childColor);
  T get blueGray700 =>
      _setChildColor(color: FxColors.blueGray700, child: _childColor);
  T get blueGray800 =>
      _setChildColor(color: FxColors.blueGray800, child: _childColor);
  T get blueGray900 =>
      _setChildColor(color: FxColors.blueGray900, child: _childColor);

  ///Cool Gray
  T get coolGray50 =>
      _setChildColor(color: FxColors.coolGray50, child: _childColor);
  T get coolGray100 =>
      _setChildColor(color: FxColors.coolGray100, child: _childColor);
  T get coolGray200 =>
      _setChildColor(color: FxColors.coolGray200, child: _childColor);
  T get coolGray300 =>
      _setChildColor(color: FxColors.coolGray300, child: _childColor);
  T get coolGray400 =>
      _setChildColor(color: FxColors.coolGray400, child: _childColor);
  T get coolGray500 =>
      _setChildColor(color: FxColors.coolGray500, child: _childColor);
  T get coolGray600 =>
      _setChildColor(color: FxColors.coolGray600, child: _childColor);
  T get coolGray700 =>
      _setChildColor(color: FxColors.coolGray700, child: _childColor);
  T get coolGray800 =>
      _setChildColor(color: FxColors.coolGray800, child: _childColor);
  T get coolGray900 =>
      _setChildColor(color: FxColors.coolGray900, child: _childColor);

  ///Red
  T get red50 => _setChildColor(color: FxColors.red50, child: _childColor);
  T get red100 => _setChildColor(color: FxColors.red100, child: _childColor);
  T get red200 => _setChildColor(color: FxColors.red200, child: _childColor);
  T get red300 => _setChildColor(color: FxColors.red300, child: _childColor);
  T get red400 => _setChildColor(color: FxColors.red400, child: _childColor);
  T get red500 => _setChildColor(color: FxColors.red500, child: _childColor);
  T get red600 => _setChildColor(color: FxColors.red600, child: _childColor);
  T get red700 => _setChildColor(color: FxColors.red700, child: _childColor);
  T get red800 => _setChildColor(color: FxColors.red800, child: _childColor);
  T get red900 => _setChildColor(color: FxColors.red900, child: _childColor);

  T _setChildColor({@required Color color, @required T child}) {
    fxColor = color;
    return child;
  }
}
