import 'package:customize/customize.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          ///MediaQuery.of(context).size.height
          height: FxHeight.vh100,

          ///MediaQuery.of(context).size.width
          width: FxWidth.vw100,

          ///EdgeInsets.all(32)
          padding: FxPadding.p32,

          ///EdgeInsets.symmetric(horizontal: 32)
          margin: FxMargin.mx32,

          color: FxColors.dangerLight,
          child: Text(
            "Customize Flutter Package",
            style: TextStyle(
              color: FxColors.primary,
            ),
          ),
        )

            ///Apply padding [p64] on container to all side
            .p64

            ///Centered container using [centered()] extension method.
            .centered(),
      ),
    );
  }
}
