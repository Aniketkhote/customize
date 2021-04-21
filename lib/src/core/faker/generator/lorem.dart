import '../provider/lorem.dart';
import '../../extensions/list__extensions.dart';
import '../../extensions/string_extensions.dart';

///Generates fake lorem data
mixin Lorem {
  ///Generates fake word.
  ///
  ///Example:
  ///```dart
  ///faker.word() // lorem
  ///```
  static String word() => wordList.random;

  ///Generates fake lists words.
  ///Example:
  ///```dart
  ///faker.words(2) // [lorem, ipsum]
  ///```
  static List<String> words([int count = 10]) {
    if (count < 0) return <String>[];
    return <String>[for (int i = 0; i < count; i++) wordList.random];
  }

  ///Generates fake sentence.
  ///Example:
  ///```dart
  ///faker.sentence() // this a lorem ipsum test
  ///```
  static String sentence([int words = 10]) {
    if (words < 0) return "";
    return Lorem.words(words).join(" ").toSentenceCase() + ".";
  }

  ///Generates fake List of sentences
  ///Example:
  ///```dart
  ///faker.sentences(count:2, words: 3) // [lorem ipsum test, sample test data]
  ///```
  static List<String> sentences({int count = 5, int words = 10}) {
    if (count < 0 || words < 0) return <String>[];
    return <String>[for (int i = 0; i < count; i++) Lorem.sentence(words)];
  }

  ///Generates fake paragraph
  ///Example:
  ///```dart
  ///faker.paragraph(2)
  ///```
  static String paragraph([int sentence = 5]) {
    if (sentence < 0) return "";
    return Lorem.sentences(count: sentence).join(" ");
  }

  ///Generates fake List of paragraphs.
  ///
  ///if asText is true return paragraphs as text.
  ///Example:
  ///```dart
  ///faker.paragraphs(count: 2, sentence:2)
  ///```
  static dynamic paragraphs(
      {int count = 3, int sentence = 5, bool asText = false}) {
    if (count < 0 || sentence < 0) return "";

    List<String> paragraphs = <String>[
      for (int i = 0; i < count; i++) Lorem.paragraph(sentence)
    ];

    if (asText) return "           ".concat(paragraphs.join("\n           "));
    return paragraphs;
  }
}
