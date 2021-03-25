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
        body: Center(
          child: FxEmptyState(
            title: "Wrong",
            subTitle: "Someting wrong",
            assetsImage:
                "https://i.pinimg.com/originals/5d/35/e3/5d35e39988e3a183bdc3a9d2570d20a9.gif",
          ),
        ),
      ),
    );
  }
}
