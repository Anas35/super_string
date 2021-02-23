## Super String

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
  print('123This'.isIdentifier); // => false
  print('This_123'.isIdentifier); // => true
  print('tHiS iS tiTle'.title()); // => 'This Is Title'
  print('tHiS'.swapcase()); // => 'ThIs'
  print('This'.charAt(0)); // => 'T'
  print('this'.similarity('THis')); // => 2
  print('this'.capitalize()); // => 'This'
  print('this'.center(7,'0')); // => '00this0'
  print('this'.count('t')); // => 1
  print('a\ta'.expandTabs(2)); // => 'a a'
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
| [title()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/title.html) | Convert only the first character of every words into **UpperCase** |
| [swapcase()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/title.html) | Convert **UpperCase** into **LowerCase** and vice versa |
| [charAt()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/charAt.html) | Return a character of a specified index |
| [similarity()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/similarity.html) | Count the number of common letter in both String |
| [capitalize()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/capitalize.html) | Convert the first character of String into **UpperCase**  |
| [center()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/center.html) | Return a centered string |
| [count()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/count.html) | Count the number of times a specified value occurs in a string |
| [expandTabs()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/expandTabs.html) | Sets the tab size of the string |
| [toCamelCase()](https://pub.dev/documentation/super_string/latest/super_string/SuperString/toCamelCase.html) | Convert the given string to camelCase |

## Features, Bugs and Contributing

If you encounter any bug or feature request, feel free to create a [issue](https://github.com/Anas35/super_string/issues). If you want to contribute to this project select one of the [issue](https://github.com/Anas35/super_string/issues) and starting working on it. 
