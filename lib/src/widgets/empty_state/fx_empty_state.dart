import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../fx_extensions.dart';

/// Get empty state widget
class FxEmptyState extends StatelessWidget {
  /// Create custom empty state screen
  FxEmptyState({
    @required this.title,
    @required this.subTitle,
    @required this.child,
    this.subtitleTextStyle,
    this.titleTextStyle,
    this.clickableText,
    this.clickableTextStyle,
    this.onTap,
    this.backgroundColor,
    this.imageHeight,
    this.imageWidth,
  });

  ///
  ///Sets image to [FxEmptyState]
  ///
  final Widget child;

  ///
  ///Sets image height
  ///
  final double imageHeight;

  ///
  ///Sets image width
  ///
  final double imageWidth;

  ///
  ///Sets title to [FxEmptyState]
  ///
  final String title;

  ///
  ///Sets subTitle to [FxEmptyState]
  ///
  final String subTitle;

  ///
  ///Sets style to subtitle
  ///
  final TextStyle subtitleTextStyle;

  ///
  ///Sets style to title
  ///
  final TextStyle titleTextStyle;

  ///
  ///Sets clickable text
  ///
  final String clickableText;

  ///
  ///Sets style to clickableText
  ///
  final TextStyle clickableTextStyle;

  ///
  ///Callback function for clickableText
  ///
  final Function onTap;

  ///
  ///Sets background color
  ///
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) => Container(
        width: context.width,
        height: context.height,
        color: backgroundColor ?? Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: imageHeight ?? context.height * .4,
              width: imageWidth ?? context.width * .6,
              child: child,
            ).pb48,
            Text(title)
                .lg
                .bold
                .widerLetter
                .textAlignCenter
                .textStyle(style: titleTextStyle),
            Text(subTitle)
                .sm
                .widerLetter
                .textAlignCenter
                .textStyle(style: subtitleTextStyle),
            GestureDetector(
              onTap: onTap,
              child: Text(clickableText ?? "")
                  .bold
                  .textStyle(style: clickableTextStyle)
                  .pt20,
            ),
          ],
        ),
      );
}
