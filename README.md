## Super String

[![Pub](https://img.shields.io/pub/v/super_string.svg)](https://pub.dev/packages/super_string)
![test](https://github.com/Anas35/super_string/actions/workflows/build.yml/badge.svg)

Some of the most common and useful string methods, Inspired 
by various other programming languages.

## Example:

```dart
import 'package:super_string/super_string.dart';

void main() {
  print('THIS'.isUpperCase); // => true
  print('this'.isLowerCase); // => true
  print('This123'.isAlNum); // => true
  print('This'.isAlpha); // => true
  print('123'.isInteger); // => true
  print('This_123'.isIdentifier); // => true
  print('Hello'.iterable); // => ['H','e','l','l','o']
  print('Hello'.first); // => 'H'
  print('Hello'.last); // => 'o'
  print('tHiS iS tiTle'.title()); // => 'This Is Title'
  print('tHiS'.swapcase()); // => 'ThIs'
  print('This'.charAt(0)); // => 'T'
  print('this'.similarity('THis')); // => 2
  print('this'.capitalize()); // => 'This'
  print('this'.center(7,'0')); // => '00this0'
  print('this'.count('t')); // => 1
  print('a\ta'.expandTabs(2)); // => 'a a'
  print('hello world'.toCamelCase()); // => 'HelloWorld'
  print('This is my code'.containsAll(['This','code'])); // => true
  print('This is my code'.containsAny(['code','hello'])); // => true
  print('Hello World'.wordWrap(width: 5)); // => 'Hello\nWorld'
}
```


## Usage:

| Command | Description |
| ------ | --------- |
| [isUpperCase](https://pub.dev/documentation/super_string/latest/super_string/SuperString/isUpperCase.html) | Check if the characters are in **UpperCase** |
| [isLowerCase](https://pub.dev/documentation/super_string/latest/super_string/SuperString/isLowerCase.html) | Check if the characters are in **LowerCase** |
| [isAlNum](https://pub.dev/documentation/super_string/latest/super_string/SuperString/isAlNum.html) | Check if the characters contains only **Alphabets** and **Numbers** |
| [isAlpha](https://pub.dev/documentation/super_string/latest/super_string/SuperString/isAlpha.html) | Check if the characters contains only **Alphabets** |
| [isInteger](https://pub.dev/documentation/super_string/latest/super_string/SuperString/isInteger.html) | Check if the characters contains only **Numbers** |
| [isIdentifier](https://pub.dev/documentation/super_string/latest/super_string/SuperString/isInteger.html) | Check if the characters contains only **Alphabets**,**Numbers** and **underscore( _ )**|
| [iterable](https://pub.dev/documentation/super_string/latest/super_string/SuperString/iterable.html) | Iterated all the character in a String |
| [first](https://pub.dev/documentation/super_string/latest/super_string/SuperString/first.html) | Return the first character in a String |
| [last](https://pub.dev/documentation/super_string/latest/super_string/SuperString/last.html) | Return the last character in a String |
| [title()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/title.html) | Convert only the first character of every words into **UpperCase** |
| [swapcase()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/title.html) | Convert **UpperCase** into **LowerCase** and vice versa |
| [charAt()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/charAt.html) | Return a character of a specified index |
| [similarity()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/similarity.html) | Count the number of common letter in both String |
| [capitalize()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/capitalize.html) | Convert the first character of String into **UpperCase**  |
| [center()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/center.html) | Return a centered string |
| [count()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/count.html) | Count the number of times a specified value occurs in a string |
| [expandTabs()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/expandTabs.html) | Sets the tab size of the string |
| [toCamelCase()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/toCamelCase.html) | Convert the given string to camelCase |
| [containsAll()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/containsAll.html) | Check if all the values in list are in String |
| [containsAny()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/containsAny.html) | Check if any one of the values in list are in String |
| [wordWrap()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/wordWrap.html) |Return a String wrapped at the specified length |

## Features, Bugs and Contributing

If you encounter any bug or feature request, feel free to create a [issue](https://github.com/Anas35/super_string/issues). If you want to contribute to this project select one of the [issue](https://github.com/Anas35/super_string/issues) and starting working on it. 
