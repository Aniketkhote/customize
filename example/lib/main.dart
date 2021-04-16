import 'package:flutter/material.dart';
import 'package:customize/customize.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FxAlert(
              title: "alert title".toTitleCase(),
              message: "this is alert message".toSentenceCase(),
              icon: Icons.check,
              borderRadius: FxRadius.radius10,
            ).p12,
          ),
        ),
      ),
    );
  }
}
