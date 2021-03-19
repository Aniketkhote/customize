import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  ///Wrap up any widget without using [center] widget
  ///
  ///Directly access [Center] widget using dot operator
  Widget center() => Center(child: this);

  ///Creates a widget that expands a child of a [Row], [Column], or [Flex]
  ///
  ///child fills the available space along the flex widget's main axis.
  ///Directly access [Expanded] widget using dot operator
  Expanded expanded() => Expanded(child: this);

  ///Create a widget that makes its child partially transparent
  ///
  ///The [Opacity] argument must not be null and must be between 0.0 and 1.0
  Widget opcity({@required double opacity}) =>
      Opacity(opacity: opacity, child: this);

  ///Get 0% [Opacity] which means fully invisible
  Widget opacity0({Key key}) => Opacity(opacity: 0.0, child: this);

  ///Get 25% [Opacity] which means paritally visible
  Widget opacity25({Key key}) => Opacity(opacity: 0.25, child: this);

  ///Get 50% [Opacity] which means half visible
  Widget opacity50({Key key}) => Opacity(opacity: 0.50, child: this);

  ///Get 75% [Opacity] which means paritally invisible
  Widget opacity75({Key key}) => Opacity(opacity: 0.75, child: this);

  ///Get 100% [Opacity] which means fully visible
  Widget opacity100({Key key}) => Opacity(opacity: 1.0, child: this);
}
