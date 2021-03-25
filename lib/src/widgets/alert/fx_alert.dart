import 'package:customize/customize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FxAlert extends StatelessWidget {
  const FxAlert({
    Key key,
    this.title,
    this.icon,
    this.message,
    this.size,
    this.color,
    this.backgroundColor,
    this.borderRadius,
  }) : super(key: key);

  ///
  ///Sets Alert title
  ///
  final String title;

  ///
  ///Sets Alert leading icon
  ///
  final IconData icon;

  ///
  ///Sets Alert message
  ///
  final String message;

  ///
  ///Sets Alert message
  ///
  final Color color;

  ///
  ///Sets Alert message
  ///
  final Color backgroundColor;

  ///
  ///Sets Alert size [sm] [md]
  ///
  final double size;

  ///
  ///Sets Alert border radius [rounded] [circular]
  ///
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: FxPadding.pxy(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          color: backgroundColor ?? FxColors.primaryLight,
          borderRadius: borderRadius ?? FxRadius.radius(allSide: 0)),
      height: size ?? FxSize.medium,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title).color(color: color ?? FxColors.primary).bold.lg,
          Text(message).color(color: color ?? FxColors.primary).sm.ellipsis,
        ],
      ),
    );
  }
}

class FxSize {
  static double get extraSmall => 30.00;
  static double get small => 35.00;
  static double get medium => 40.00;
  static double get normal => 45.00;
  static double get large => 50.00;
  static double get extraLarge => 60.00;
}
