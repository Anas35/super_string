import 'package:super_string/super_string.dart';

void main() {
  /// [isUpperCase]
  print('this'.isUpperCase); // => false
  print('THIS'.isUpperCase); // => true

  /// [isLowerCase]
  print('this'.isLowerCase); // => true
  print('THIS'.isLowerCase); // => false

  /// [isAlNum]
  print('This123'.isAlNum); // => true
  print('123'.isAlNum); // => true
  print('This@123'.isAlNum); // => false

  /// [isAlpha]
  print('This'.isAlpha); // => true
  print('A1'.isAlpha); // => false
  print('This@123'.isAlpha); // => false

  /// [isInteger]
  print('This123'.isInteger); // => false
  print('123'.isInteger); // => true
  print('This@123'.isInteger); // => false

  /// [isIdentifier]
  print('This123'.isIdentifier); // => true
  print('This 123'.isIdentifier); // => false
  print('123This'.isIdentifier); // => false
  print('This@123'.isIdentifier); // => false
  print('This_123'.isIdentifier); // => true

  /// [iterable]
  print('Hello'.iterable); // => ['H','e','l','l','o']
  print('123'.iterable); // => ['1','2','3']
  print('A B'.iterable); // => ['A', ' ', 'B']

  /// [first]
  print('Hello'.first); // => 'H'
  print('123'.first); // => '1'

  /// [last]
  print('Hello'.last); // => 'o'
  print('123'.last); // => '3'

  /// [title]
  print('this123'.title()); // => 'This123'
  print('This is title'.title()); // => 'This Is Title'
  print('tHiS iS tiTle'.title()); // => 'This Is Title'

  /// [swapcase]
  print('tHiS'.swapcase()); // => 'ThIs'
  print('HeLlO'.swapcase()); // => 'hElLo'

  /// [charAt]
  print('This'.charAt(0)); // => 'T'
  print('This'.charAt(3)); // => 's'

  /// [similarity]
  print('This'.similarity('This')); // => 4
  print('Hello World'.similarity('Hello All')); // => 5
  print('Hello World'.similarity('Hello All', isWordComparison: true)); // => 1
  print('This is Example sentence'
      .similarity('This is Example words', isWordComparison: true)); // => 3

  /// [capitalize]
  print('this'.capitalize()); // => 'This'
  print('THIS'.capitalize()); // => 'This'

  /// [center]
  print('this'.center(6)); // => ' this ';
  print('this'.center(7, '0')); // => '00this0'

  /// [count]
  print('this'.count('t')); // => 1
  print('hello'.count('l')); // => 2
  print('hello'.count('l', 0, 3)); // => 1

  /// [expandTabs]
  print('a\ta'.expandTabs()); // => 'a        a'
  print('a\ta'.expandTabs(2)); // => 'a a'

  /// [toCamelCase]
  print('hello World'.toCamelCase()); // => HelloWorld
  print('hello_World'.toCamelCase()); // => HelloWorld
  print('hello World'.toCamelCase(isLowerCamelCase: true)); // => helloWorld

  /// [containsAll]
  print('This is my code'.containsAll(['This', 'code'])); // => true
  print('This is my code'.containsAll(['code', 'hello'])); // => false

  /// [containsAny]
  print('This is my code'.containsAny(['code', 'hello'])); // => true
  print('This is my code'.containsAny(['hello', 'world'])); // => false
}
