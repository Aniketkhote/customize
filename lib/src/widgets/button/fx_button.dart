import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin FxButtonMixin {
  static Color color;
}

class FxPrimaryButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color color;

  FxPrimaryButton({this.text, this.bgColor, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Center(
          child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(bgColor)),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: color),
        ),
      )),
    );
  }
}
