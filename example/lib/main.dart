import 'package:customize/customize.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Text("Customize Flutter Package")
            .h6
            .xl4
            .bold
            .color(color: FxColors.amber500)
            .container(
                color: FxColors.blueGray700,
                padding: FxPadding.pxy(horizontal: 60, vertical: 20))
            .center,
      ),
    );
  }
}
