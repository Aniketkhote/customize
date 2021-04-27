<div align="center" >
  
  ## Customize is awesome flutter package to create beautiful UI.
  
</div>

<br />

![Pub Version](https://img.shields.io/pub/v/customize?color=blue&style=the-badge)
![GitHub contributors](https://img.shields.io/github/contributors/Aniketkhote/customize?style=the-badge)
![GitHub Release Date](https://img.shields.io/github/release-date/Aniketkhote/customize?style=the-badge)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/Aniketkhote/customize/CI?style=the-badge)
[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/Aniketkhote/customize.svg?style=flat-square)](https://github.com/Aniketkhote/customize)
[![pub points](https://badges.bar/customize/pub%20points)](https://pub.dev/packages/customize/score)
[![popularity](https://badges.bar/customize/popularity)](https://pub.dev/packages/customize/score)
[![likes](https://badges.bar/customize/likes)](https://pub.dev/packages/customize/score)


Thanks to the introduction of [extension methods](https://dart.dev/guides/language/extension-methods) in Dart 2.7.0, `customize` makes it possible to build widget tree\`s more readable and efficient.

[`Customize`](https://pub.dev/packages/customize) is build as a tool to enhance your Flutter UI development experience and make code easier. It is highly inspired by Bootstrap and Tailwind CSS. 
It also provide lots of extension methods on String, List and Map.

## How to Use

```yaml
# add this line to your dependencies and replace [version] with the latest version:
  customize: ^[version]
```

```dart
import 'package:customize/customize.dart';
```

## Basic Flutter Example
```dart
/// Custom Alert Box
 FxAlert(
  title: "alert title".toTitleCase(),
  message: "this is alert message".toSentenceCase(),
  icon: Icons.check,
  borderRadius: FxRadius.radius10,
  leftBar: true,
)

```
<p align="center" >
<img src="https://imgur.com/67NCCGc.png" width="400"/>
</p>

```dart
///Custom Icon Box
 FxIconBox(
  child: Icon(Icons.person),
  radius: FxRadius.radius20,
  onTap: null,
)

```
<p align="center" >
<img src="https://imgur.com/8DkrpXT.png" width="400"/>
</p>

```dart
///Custom Empty State
FxEmptyState(
  title: "Your Cart is Empty",
  subTitle:"Looks like you haven't added anything to your cart yet.",
  child: Image.network("https://www.flaticon.com/svg/vstatic/svg/102/102661.svg?token=exp=1618664741~hmac=88edc7611774d198a964701ef715bebb"),
),

```
<p align="center" >
<img src="https://imgur.com/kHzZE71.png" width="400"/>
</p>

</br>

---

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
    {'id': 3, 'name': 'Bookcase', 'price': 150}, 
    {'id': 1, 'name': 'Desk', 'price': 200}
  ]


  //Get only those object whose price is not 150 & 200
  print(mapList.whereNotIn('price', [150,200]));

  [
    {'id': 2, 'name': 'Chair', 'price': 100}
  ]

   //Get only those key/values which is this keys
  print(mapList.only(['name','price']));

  [
    {'name': 'Bookcase', price: 150}, 
    {'name': 'Chair', 'price': 100},
    {'name': 'Desk', price: 200}
  ]


  //Get all key/values excepted this key
  print(mapList.notOnly(['price']));

  [
    {'id': 1, 'name': 'Desk'},
    {'id': 2, 'name': 'Chair'},
    {'id': 3, 'name': 'Bookcase'}
  ]

```
</br>

---


## Some other methods and Widgets

<details>
<summary>Widgets</summary>

* FxAlert
* FxIconBox
* FxButton
* FxEmptyState
* FxCallout
* HBox
* WBox
* SquareBox

</details>

<details>
<summary>String Methods</summary>

* isAlphabet
* isEmail
* isNumber
* isMobileNumber
* removeWhitespace
* toSlug
* minLength()
* maxLength()
* range()
* mask()
* countBy()
* toTitleCase()
* toSentenceCase()
* toCapitalCase()
* Checks file extensions(eg. png,svg,pdf,audio,video and more).

[String API Reference](https://pub.dev/documentation/customize/latest/customize/StringExtensions.html).

</details>

<details>
<summary>List Methods</summary>
    
* flatten
* flatMap
* random
* min
* max
* sum
* avg
* median
* mode
* groupBy
* countBy()
* groupByKey()
* pluck()
* sorted()
* sortBy()
* diff()
* chunk()
* only()
* notOnly()
* whereIn()
* whereNotIn()
* whereBetween()
* whereNotBetween()
* hasKeyValue()
* hasKey()
* hasValue()

[List API Reference](https://pub.dev/documentation/customize/latest/customize/ListExtensions.html).

</details>

<details>
<summary>Map Methods</summary>

* getId
* isEmptyOrNull
* isNotEmptyOrNull
* contains()
* diffKeys()
* diffValues()
* getBool()
* getInt()
* getDouble()
* getString()
* getList()

[Map API Reference](https://pub.dev/documentation/customize/latest/customize/MapExtensions.html).

</details>

<details>
<summary>Fakers Methods</summary>

* word()
* words()
* sentence()
* sentences()
* paragraph()
* paragraphs()

</details>

<br />

**Read the full** [API reference](https://pub.dev/documentation/customize/latest/).

**Read** [Documentation](https://aniketkhote.github.io/customize-docs/#/).

***

## Contributing 
Customize is 100% free and open source. We encourage and support an active, healthy community that accepts contributions from the public – including you.

- Pick up any issue marked with label "[good first issue](https://github.com/Aniketkhote/customize/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22)"
- Fix a bug
- Write and improve some documentation. Documentation is very critical to us. We would appreciate help in adding multiple languages to our docs.
- If you are a developer, feel free to check out the source and submit pull requests.
- Please don't forget to like, follow, and star our repo! Join our growing community to keep up to date with the latest GetWidget development.

Code and documentation Copyright 2021 [Aniket Khote](https://github.com/Aniketkhote)

---

<div align="center" >

### **Show some ❤️ to Like, Follow, and Star our repo!**

</div>
</br>

