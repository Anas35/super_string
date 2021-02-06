## Super String

Dart's extension methods for String.

## Example:

```dart
import 'package:super_string/super_string.dart';

void main() {
  print('THIS'.isUpperCase()); // => true
  print('this'.isLowerCase()); // => true
  print('This123'.isAlNum()); // => true
  print('This'.isAlpha()); // => true
  print('123'.isInteger()); // => true
  print('123This'.isIdentifier()); // => false
  print('This_123'.isIdentifier()); // => true
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
