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
  print('this'.similarity('THis')); // => 2

  /// [capitalize]
  print('this'.capitalize()); // => 'This'
  print('THIS'.capitalize()); // => 'This'

  /// [center]
  print('this'.center(6)); // => ' this ';
  print('this'.center(7,'0')); // => '00this0'

  /// [count]
  print('this'.count('t')); // => 1
  print('hello'.count('l')); // => 2
  print('hello'.count('l',0,3)); // => 1

  /// [expandTabs]
  print('a\ta'.expandTabs()); // => 'a        a'
  print('a\ta'.expandTabs(2)); // => 'a a'
}