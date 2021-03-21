import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

extension WidgetExtensions on Widget {
  ///Wrap up any widget without using [center] widget
  ///
  ///Directly access [Center] widget using dot operator
  Center get center => Center(child: this);

  ///Creates a widget that expands a child of a [Row], [Column], or [Flex]
  ///
  ///child fills the available space along the flex widget's main axis.
  ///Directly access [Expanded] widget using dot operator
  Expanded get expanded => Expanded(child: this);

  ///Create a widget that makes its child partially transparent
  ///
  ///The [Opacity] argument must not be null and must be between 0.0 and 1.0
  Opacity opcity({@required double opacity}) =>
      Opacity(opacity: opacity, child: this);

  ///Get 0% [Opacity] which means fully invisible
  Opacity get opacity0 => Opacity(opacity: 0.0, child: this);

  ///Get 25% [Opacity] which means paritally visible
  Opacity get opacity25 => Opacity(opacity: 0.25, child: this);

  ///Get 50% [Opacity] which means half visible
  Opacity get opacity50 => Opacity(opacity: 0.50, child: this);

  ///Get 75% [Opacity] which means paritally invisible
  Opacity get opacity75 => Opacity(opacity: 0.75, child: this);

  ///Get 100% [Opacity] which means fully visible
  Opacity get opacity100 => Opacity(opacity: 1.0, child: this);
}
