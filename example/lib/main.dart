import 'package:flutter/material.dart';
import 'package:customize/customize.dart';

void main() {
  runApp(MyApp());
}

getData() {
  List list = [
    {'product': 'Desk', 'price': 200},
    {'product': 'Chair', 'price': 100},
    {'product': 'Bookcase', 'price': 150},
    {'product': 'Door', 'price': 100},
  ];

  print(list.whereNotIn("price", [200]));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: ElevatedButton(
                  onPressed: () => getData(), child: Text("Customize"))),
        ),
      ),
    );
  }
}
