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
        body: SafeArea(
          child: FxIconBox(
            child: Icon(Icons.favorite),
          ),
        ),
      ),
    );
  }
}
