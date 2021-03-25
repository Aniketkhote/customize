import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../fx_extensions.dart';

class FxEmptyState extends StatelessWidget {
  FxEmptyState({
    @required this.title,
    @required this.subTitle,
    @required this.assetsImage,
    // this.subtitleTextStyle,
    // this.titleTextStyle,
    this.clickableText,
    this.clickableTextStyle,
    this.onTap,
    this.backgroundColor,
  });

  ///
  ///Sets image to [FxEmptyState]
  ///
  final String assetsImage;

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
  ///final TextStyle subtitleTextStyle;

  ///
  ///Sets style to title
  ///
  //final TextStyle titleTextStyle;

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
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      color: backgroundColor ?? Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            assetsImage,
            height: context.height * .4,
            width: context.width,
          ),
          Text(title).lg.bold.widerLetter,
          Text(subTitle).sm.widerLetter,
          GestureDetector(
            onTap: onTap,
            child: Text(clickableText ?? "").bold.pt20,
          )
        ],
      ),
    );
  }
}
