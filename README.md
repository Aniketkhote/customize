<p align="center" >
  <strong>Customize is awesome flutter package to create beautiful UI.</strong>
  <br />
  <br />
  <a href="https://www.buymeacoffee.com/aniketkhote" target="_blank"><img width="150px" src="https://cdn.buymeacoffee.com/buttons/default-yellow.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>
</p>

<br />

![Pub Version](https://img.shields.io/pub/v/customize?color=blue&style=the-badge)
![GitHub contributors](https://img.shields.io/github/contributors/Aniketkhote/customize?style=the-badge)
![GitHub Release Date](https://img.shields.io/github/release-date/Aniketkhote/customize?style=the-badge)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/Aniketkhote/customize/CI?style=the-badge)

Thanks to the introduction of [extension methods](https://dart.dev/guides/language/extension-methods) in Dart 2.7.0, `customize` makes it possible to build widget tree\`s more readable and efficient.

[`Customize`](https://pub.dev/packages/customize) is build as a tool to enhance your Flutter UI development experience and make code easier. It is highly inspired by Bootstrap and Tailwind CSS. 

## How to Use

```yaml
# add this line to your dependencies
  customize: ^0.1.0
```

```dart
import 'package:customize/customize.dart';
```

## Basic Dart Example
```dart
 List mapList = [
    {'id': 1, 'name': 'Desk', 'price': 200},
    {'id': 2, 'name': 'Chair', 'price': 100},
    {'id': 3, 'name': 'Bookcase', 'price': 150},
  ];

  //Get only those object whose price is 150 & 200
  print(mapList.whereIn('price', [150,200]));

  [
    {id: 3, name: Bookcase, price: 150}, 
    {id: 1, name: Desk, price: 200}
  ]


  //Get only those object whose price is not 150 & 200
  print(mapList.whereNotIn('price', [150,200]));

  [
    {'id': 2, 'name': 'Chair', 'price': 100}
  ]

```

## Some other methods
- flatten
- flattenMap
- countBy
- pluck()
- sorted()
- sortBy()
- diff()
- chunk()
- only()
- notOnly()
- whereIn()
- whereNotIn()
- whereBetween()
- whereNotBetween()
- containsInMap()
- containsKeyInMap()
- containsValueInMap()


Read the full [API reference](https://pub.dev/documentation/customize/latest/).