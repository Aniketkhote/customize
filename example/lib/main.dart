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
        backgroundColor: FxColors.disabledColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FxAlert(
              title: "Success",
              message: "You have succefully completed the quiz",
              color: FxColors.success,
              icon: Icons.check,
            ),
            FxAlert(
              title: "Failed",
              message: "You have failed to complete the quiz",
              color: FxColors.danger,
              borderRadius: FxRadius.radius20,
              icon: Icons.warning,
            ),
          ],
        ),
      ),
    );
  }
}
