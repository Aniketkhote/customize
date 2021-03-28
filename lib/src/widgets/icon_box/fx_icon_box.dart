import 'package:customize/customize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FxIconBox extends StatelessWidget {
  const FxIconBox({
    @required this.child,
    this.onTap,
    this.boxColor,
    this.radius,
  });

  ///
  ///Callback function
  ///
  final Function onTap;

  ///
  ///Set Icon box background color
  ///
  final Color boxColor;

  ///
  ///sets border radius to icon box
  ///
  final double radius;

  ///This widget can only have one child.
  ///
  ///Pass either [Icon],[Text] or [Image]
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? null,
      child: Container(
        padding: EdgeInsets.all(10),
        child: child,
        decoration: BoxDecoration(
          color: boxColor ?? FxColors.primaryLight,
          borderRadius: BorderRadius.circular(radius) ?? FxRadius.radius10,
        ),
      ),
    );
  }
}
