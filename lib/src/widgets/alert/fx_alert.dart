import 'package:customize/customize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FxAlert extends StatelessWidget {
  const FxAlert({
    Key key,
    this.title,
    this.icon,
    this.message,
    this.color,
    this.backgroundColor,
    this.borderRadius,
    this.iconBgColor,
    this.iconColor,
    this.leftBar,
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
  ///Sets text color
  ///
  final Color color;

  ///
  ///Sets alert background color
  ///
  final Color backgroundColor;

  ///
  ///Sets icon color
  ///
  final Color iconColor;

  ///
  ///Sets icon background color
  ///
  final Color iconBgColor;

  ///
  ///Sets Alert border radius [rounded] [circular]
  ///
  final BorderRadius borderRadius;

  ///
  ///Sets vertical left bar
  ///
  final bool leftBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 70),
      decoration: BoxDecoration(
        color: backgroundColor ?? color.withOpacity(.1),
        borderRadius: borderRadius ?? FxRadius.radius(allSide: 0),
      ),
      child: Row(
        children: <Widget>[
          if (leftBar ?? false)
            Container(
                decoration: BoxDecoration(
                    border: Border(left: BorderSide(color: color, width: 4)))),
          if (icon != null)
            CircleAvatar(
              child: Icon(icon, color: iconColor ?? Colors.white),
              backgroundColor: iconBgColor ?? color,
            ).pl12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (title != null)
                Text(title).color(color ?? FxColors.primary).bold.lg.pb4,
              Text(message)
                  .color(color ?? FxColors.primary)
                  .sm
                  .letterSpacing(1)
                  .ellipsis
                  .maxLine(2)
            ],
          ).px12.expanded(1),
        ],
      ),
    ).px8.py4;
  }
}
