import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../fx_utilities.dart';
import '../../fx_extensions.dart';

///Get custom button style
class FxButton extends StatelessWidget {
  FxButton({
    required this.text,
    required this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.padding,
    this.margin,
    this.radius,
    this.color,
    this.shadow,
    this.textColor,
    this.iconColor,
    this.outlineColor = FxColors.primary,
    this.shape = BtnShape.rounded,
    this.size = BtnSize.normal,
    this.type = BtnType.solid,
  });

  ///set text to button
  final String text;

  ///set leading icon to button
  final IconData? leadingIcon;

  ///set trailing icon to button
  final IconData? trailingIcon;

  ///set
  final VoidCallback onPressed;

  ///set padding to button
  final EdgeInsetsGeometry? padding;

  ///set margin to button
  final EdgeInsetsGeometry? margin;

  ///set border radius to button
  final BorderRadius? radius;

  ///set border color
  final Color outlineColor;

  ///set button color
  final Color? color;

  ///set text color
  final Color? textColor;

  ///set icon color
  final Color? iconColor;

  ///set shadow to button
  final List<BoxShadow>? shadow;

  ///set button shape (eg. pill, rounded)
  final BtnShape shape;

  ///set button size (eg. small, medium, large)
  final BtnSize size;

  ///set button type (eg. solid,outline)
  final BtnType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? FxPadding.pxy(h: 16, v: 7),
      margin: margin ?? FxPadding.pxy(h: 20, v: 5),
      decoration: BoxDecoration(
        borderRadius: radius ?? getBtnShape(),
        color: color ?? getBtnType(),
        boxShadow: shadow ?? FxShadow.none,
        border: getButtonBorder(),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(leadingIcon,
                    color: getTextColor(iconColor ?? getBtnType()), size: 20)
                .hide(leadingIcon != null),
            text
                .text()
                .textStyle(
                  style: TextStyle(
                    color: textColor ?? getTextColor(color ?? getBtnType()),
                  ),
                )
                .bold
                .textStyle(textScaleFactor: getBtnSize())
                .px4
                .hide(text.isNotEmpty),
            Icon(trailingIcon,
                    color: getTextColor(iconColor ?? getBtnType()), size: 20)
                .hide(trailingIcon != null),
          ],
        ),
      ),
    );
  }

  ///Get button shape (eg. pill,rounded,leaf)
  BorderRadius getBtnShape() {
    if (BtnShape.pill == shape) return FxRadius.radius30;
    if (BtnShape.rounded == shape) return FxRadius.radius5;
    if (BtnShape.rleft == shape) return FxRadius.left(30);
    if (BtnShape.rright == shape) return FxRadius.right(30);
    if (BtnShape.leaf == shape)
      return FxRadius.only(bottomLeft: 30, topRight: 30);
    return FxRadius.all(0);
  }

  ///Get button size (eg. small,medium,large)
  double getBtnSize() {
    if (BtnSize.tiny == size) return .7;
    if (BtnSize.small == size) return 1;
    if (BtnSize.medium == size) return 1.5;
    if (BtnSize.large == size) return 1.8;
    return 1.3;
  }

  ///Get text color according to backgound color brightness
  Color getTextColor(Color color) => color == Colors.transparent
      ? FxColors.blueGray700
      : color.computeLuminance() > 0.5
          ? FxColors.blueGray700
          : Colors.white;

  ///Get [Fxbutton] type (eg. solid,outline)
  Color getBtnType() {
    if (BtnType.outline == type ||
        BtnType.outline2x == type ||
        BtnType.transparent == type) return Colors.transparent;
    return FxColors.primary;
  }

  ///Get [FxButton] border
  Border getButtonBorder() {
    if (BtnType.outline == type)
      return Border.all(
          color: outlineColor, width: 2, style: BorderStyle.solid);
    if (BtnType.outline2x == type)
      return Border.all(
          color: outlineColor, width: 3, style: BorderStyle.solid);

    return Border.all(style: BorderStyle.none);
  }
}

enum BtnShape { pill, flat, rounded, leaf, rleft, rright }
enum BtnType { solid, outline, outline2x, transparent }
enum BtnSize { tiny, small, normal, medium, large }
