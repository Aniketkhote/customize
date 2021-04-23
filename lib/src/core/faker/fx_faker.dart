import 'dart:convert';
import 'package:crypto/crypto.dart';

import './generator/lorem.dart';
import '../../fx_extensions.dart';

///Faker class to generates fake data
///
///```dart
///Faker faker = Faker();
///faker.word()
///faker.sentence()
///```
class Faker with Lorem {
  ///Get random element from list.
  ///
  ///Example:
  ///```dart
  ///faker.randomElement([lorem,ipsum]) // lorem
  ///```
  dynamic randomElement(List<dynamic> list) => list.random;

  ///Generates uuid on current DateTime.
  ///
  ///Example:
  ///```dart
  ///faker.uuid // de99a620c50f2990e87144735cd357e7
  ///```
  String uuid() => md5.convert(utf8.encode('${DateTime.now()}')).toString();
}
