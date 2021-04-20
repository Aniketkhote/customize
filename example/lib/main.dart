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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: FxIconBox(
            child: Icon(Icons.ac_unit),
            boxShadow: FxShadow.medium,
          ).center,
        ),
      ),
    );
  }
}
