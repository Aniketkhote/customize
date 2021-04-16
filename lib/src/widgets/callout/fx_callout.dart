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
    this.onPressed,
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

  ///  Called when the button is tapped or otherwise activated.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => Container(
        height: FxHeight.h20,
        margin: FxMargin.m8,
        padding: FxPadding.p32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 10),
          color: background ?? FxColors.blueGray100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Callout Title").xl2.bold,
                Text("Callout message").lg.wideLetter.normal,
              ],
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(buttonColor ?? FxColors.primary),
              ),
              child: Text("Contact us".toUpperCase())
                  .bold
                  .color(Colors.white)
                  .center,
            ).pl24,
          ],
        ),
      );
}
