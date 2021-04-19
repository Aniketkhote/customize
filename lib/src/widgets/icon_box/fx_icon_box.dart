import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../fx_utilities.dart';
import '../../fx_extensions.dart';

///Get predefined icon box
class FxIconBox extends StatelessWidget {
  ///create widget that wrap with box
  const FxIconBox({
    @required this.child,
    this.onTap,
    this.boxColor,
    this.borderRadius,
    this.margin,
    this.padding,
    this.size,
    this.boxShadow,
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
  final BorderRadius borderRadius;

  ///This widget can only have one child.
  ///
  ///Pass either [Icon],[Text] or [Image]
  final Widget child;

  ///sets padding to icon box
  final EdgeInsetsGeometry padding;

  ///sets margin to icon box
  final EdgeInsetsGeometry margin;

  ///sets size to icon box
  final double size;

  ///Sets box shadow to icon box
  final List<BoxShadow> boxShadow;

  @override
  Widget build(BuildContext context) => Container(
        padding: padding ?? FxPadding.p12,
        margin: margin ?? FxPadding.p12,
        child: child,
        decoration: BoxDecoration(
          color: boxColor ?? FxColors.primaryLight,
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          boxShadow: boxShadow ?? FxShadow.none,
        ),
      ).squareBox(size).onInkTap(() => onTap);
}
