<p align="center" >
  <strong>Customize is awesome flutter package to create beautiful UI.</strong>
  <br />
  <br />
  <a href="https://www.buymeacoffee.com/aniketkhote" target="_blank"><img width="150px" src="https://cdn.buymeacoffee.com/buttons/default-yellow.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>
</p>

<br />

![Pub Version](https://img.shields.io/pub/v/customize?color=blue&style=for-the-badge)
![GitHub contributors](https://img.shields.io/github/contributors/Aniketkhote/customize?style=for-the-badge)
![GitHub Release Date](https://img.shields.io/github/release-date/Aniketkhote/customize?style=for-the-badge)
![GitHub branch checks state](https://img.shields.io/github/checks-status/Aniketkhote/customize/main?color=green&style=for-the-badge)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/Aniketkhote/customize/ci?style=for-the-badge)

Thanks to the introduction of [extension methods](https://dart.dev/guides/language/extension-methods) in Dart 2.7.0, `customize` makes it possible to build widget tree\`s more readable and efficient.

`customize` is build as a tool to enhance your Flutter UI development experience and make code easier. It is highly inspired by Bootstrap and Tailwind CSS. 

## How to Use

```yaml
# add this line to your dependencies
  customize: ^0.0.4
```

```dart
import 'package:customize/customize.dart';
```

## Basic Example
```dart
Text("Customize Flutter Package")
  .h6
  .xl4
  .bold
  .color(color: FxColors.amber500)
  .container(
    color: FxColors.blueGray700,
    padding: FxPadding.pxy(
      horizontal: 60, 
      vertical: 20,
    ),
  )
  .center,
```
## Screen Shot
<p align="center">
  <a href="#" target="_blank">
    <img src="https://i.imgur.com/gQlU38Q.png"  width="800" alt="customize">
  </a>
</p>