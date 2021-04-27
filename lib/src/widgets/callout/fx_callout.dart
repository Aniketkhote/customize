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
    this.height,
    this.width,
    this.margin,
    this.padding,
  });

  /// sets title to callout
  final String? title;

  /// sets caption to callout
  final String? caption;

  /// sets text to button
  final String? buttonText;

  /// sets border radius to callout box
  final double? radius;

  /// sets callout background
  final Color? background;

  /// sets button color
  final Color? buttonColor;

  ///  Called when the button is tapped or otherwise activated.
  final VoidCallback? onPressed;

  ///sets height to callout
  final double? height;

  ///sets width to callout
  final double? width;

  ///sets margin to callout
  final EdgeInsetsGeometry? margin;

  ///sets padding to callout
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) => Container(
        height: height ?? FxHeight.h20,
        width: width ?? FxWidth.w100,
        margin: margin ?? FxPadding.p8,
        padding: padding ?? FxPadding.p32,
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
                Text(title!).xl2.bold,
                Text(caption!).lg.wideLetter.normal,
              ],
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(buttonColor ?? FxColors.primary),
              ),
              child: Text(buttonText!.toUpperCase())
                  .bold
                  .color(Colors.white)
                  .center,
            ).pl24,
          ],
        ),
      );
}
