import '../provider/lorem.dart';
import '../../extensions/list__extensions.dart';
import '../../extensions/string_extensions.dart';

///Generates fake lorem data
class Lorem {
  ///Generates fake word.
  ///
  ///Example:
  ///```dart
  ///faker.word() // lorem
  ///```
  String word() => wordList.random;

  ///Generates fake lists words.
  ///Example:
  ///```dart
  ///faker.words(2) // [lorem, ipsum]
  ///```
  List<String> words({int nWords = 10}) {
    if (nWords < 0) return <String>[];
    return <String>[for (int i = 0; i < nWords; i++) wordList.random];
  }

  ///Generates fake sentence.
  ///Example:
  ///```dart
  ///faker.sentence() // this a lorem ipsum test
  ///```
  String sentence({int nWords = 10}) {
    if (nWords < 0) return "";
    return words(nWords: nWords).join(" ").toSentenceCase() + ".";
  }

  ///Generates fake List of sentences
  ///Example:
  ///```dart
  ///faker.sentences(nSentence:2, nWords: 3) // [lorem ipsum test, sample test data]
  ///```
  List<String> sentences({int nSentence = 5, int nWords = 10}) {
    if (nSentence < 0) return <String>[];
    return <String>[
      for (int i = 0; i < nSentence; i++) sentence(nWords: nWords)
    ];
  }

  ///Generates fake paragraph
  ///Example:
  ///```dart
  ///faker.paragraph(2)
  ///```
  String paragraph({int nSentence = 5, int nWords = 5}) {
    if (nSentence < 0) return "";
    return sentences(nSentence: nSentence, nWords: nWords).join(" ");
  }

  ///Generates fake List of paragraphs.
  ///
  ///if asText is true return paragraphs as text.
  ///Example:
  ///```dart
  ///faker.paragraphs(nParagraphs: 2, nSentence:2)
  ///```
  dynamic paragraphs(
      {int nParagraph = 3,
      int nSentence = 5,
      int nWords = 10,
      bool asText = false}) {
    if (nParagraph < 0) return "";

    List<String> paragraphs = <String>[
      for (int i = 0; i < nParagraph; i++)
        paragraph(nSentence: nSentence, nWords: nWords)
    ];

    if (asText) return paragraphs.join("\n");
    return paragraphs;
  }

  ///Generates fake long text.
  ///Example:
  ///```dart
  ///faker.text()
  ///```
  String text([int nSentence = 10]) {
    if (nSentence < 0) return "";
    return paragraph(nSentence: nSentence);
  }
}
