import 'package:customize/customize.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../fx_utilities.dart';
import '../../fx_extensions.dart';

///Get custom button style
class FxButton extends StatelessWidget {
  FxButton({
    @required this.text,
    @required this.onPressed,
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
    this.shape = ButtonShape.rounded,
    this.size = ButtonSize.normal,
    this.type = ButtonType.solid,
  });

  ///set text to button
  final String text;

  ///set leading icon to button
  final IconData leadingIcon;

  ///set trailing icon to button
  final IconData trailingIcon;

  ///set
  final VoidCallback onPressed;

  ///set padding to button
  final EdgeInsetsGeometry padding;

  ///set margin to button
  final EdgeInsetsGeometry margin;

  ///set border radius to button
  final BorderRadius radius;

  ///set border color
  final Color outlineColor;

  ///set button color
  final Color color;

  ///set text color
  final Color textColor;

  ///set icon color
  final Color iconColor;

  ///set shadow to button
  final List<BoxShadow> shadow;

  ///set button shape (eg. pill, rounded)
  final ButtonShape shape;

  ///set button size (eg. small, medium, large)
  final ButtonSize size;

  ///set button type (eg. solid,outline)
  final ButtonType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? FxPadding.pxy(h: 16, v: 7),
      margin: margin ?? FxPadding.pxy(h: 20, v: 5),
      decoration: BoxDecoration(
        borderRadius: radius ?? getButtonShape(),
        color: color ?? getButtonType(),
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
                    color: getTextColor(iconColor ?? getButtonType()), size: 20)
                .hide(leadingIcon != null),
            text
                .text()
                .textStyle(
                  style: TextStyle(
                    color: textColor ?? getTextColor(color ?? getButtonType()),
                  ),
                )
                .bold
                .textStyle(textScaleFactor: getButtonSize())
                .px4
                .hide(text != null),
            Icon(trailingIcon,
                    color: getTextColor(iconColor ?? getButtonType()), size: 20)
                .hide(trailingIcon != null),
          ],
        ),
      ),
    );
  }

  ///Get button shape (eg. pill,rounded,leaf)
  BorderRadius getButtonShape() {
    if (ButtonShape.pill == shape) return FxRadius.radius30;
    if (ButtonShape.rounded == shape) return FxRadius.radius5;
    if (ButtonShape.rleft == shape) return FxRadius.left(30);
    if (ButtonShape.rright == shape) return FxRadius.right(30);
    if (ButtonShape.leaf == shape)
      return FxRadius.only(bottomLeft: 30, topRight: 30);
    return FxRadius.all(0);
  }

  ///Get button size (eg. small,medium,large)
  double getButtonSize() {
    if (ButtonSize.tiny == size) return .7;
    if (ButtonSize.small == size) return 1;
    if (ButtonSize.medium == size) return 1.5;
    if (ButtonSize.large == size) return 1.8;
    return 1.3;
  }

  ///Get text color according to backgound color brightness
  Color getTextColor(Color color) => color == Colors.transparent
      ? FxColors.blueGray700
      : color.computeLuminance() > 0.5
          ? FxColors.blueGray700
          : Colors.white;

  ///Get [Fxbutton] type (eg. solid,outline)
  Color getButtonType() {
    if (ButtonType.outline == type ||
        ButtonType.outline2x == type ||
        ButtonType.transparent == type) return Colors.transparent;
    return FxColors.primary;
  }

  ///Get [FxButton] border
  Border getButtonBorder() {
    if (ButtonType.outline == type)
      return Border.all(
          color: outlineColor, width: 2, style: BorderStyle.solid);
    if (ButtonType.outline2x == type)
      return Border.all(
          color: outlineColor, width: 3, style: BorderStyle.solid);

    return Border.all(style: BorderStyle.none);
  }
}

enum ButtonShape { pill, flat, rounded, leaf, rleft, rright }
enum ButtonType { solid, outline, outline2x, transparent }
enum ButtonSize { tiny, small, normal, medium, large }
