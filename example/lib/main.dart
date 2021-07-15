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
          child: "Customize".toTitleCase().toText().h1.center,
        ),
      ),
    );
  }
}
