import 'package:flutter/material.dart';

import '../../fx_utilities.dart';
import '../../fx_extensions.dart';

///Get callout
class FxCallout extends StatelessWidget {
  /// Creates callout
  const FxCallout({
    this.radius,
    this.background,
    this.buttonColor,
    this.title,
    this.caption,
    this.buttonText,
  });

  /// sets title to callout
  final String title;

  /// sets caption to callout
  final String caption;

  /// sets text to button
  final String buttonText;

  /// sets border radius to callout box
  final double radius;

  /// sets callout background
  final Color background;

  /// sets button color
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: FxHeight.h25,
      margin: FxMargin.m8,
      padding: FxPadding.p32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 10),
        color: background ?? FxColors.blueGray100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Hello").xl2.bold,
              Text("Hello").lg.wideLetter.semiBold,
            ],
          ).expanded(flex: 1),
          ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(buttonColor ?? FxColors.primary),
            ),
            child: Text("Contact us".toUpperCase())
                .bold
                .color(Colors.white)
                .center,
          ).expanded(flex: 1).pl24,
        ],
      ),
    );
  }
}
