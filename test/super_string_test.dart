import 'package:test/test.dart';

import 'package:super_string/super_string.dart';

void main() {
  final Matcher throwsAssertionError = throwsA(isA<AssertionError>());

  test('isLowerCase', () {
    /// Expected True when Empty string `""` is called.
    expect(''.isLowerCase, true);

    /// Expected True when a lowerCase Alphabet is called.
    expect('hello world'.isLowerCase, true);

    /// Expected False when a upperCase Alphabet is called.
    expect('HELLO WORLD'.isLowerCase, false);

    /// Expected False when both upperCase and lowerCase Alphabet is called.
    expect('Hello World'.isLowerCase, false);

    /// Expected True when a number is called
    expect('123'.isLowerCase, true);

    /// Expected True when a special Character is called.
    expect('@#&!'.isLowerCase, true);

    /// Expected False when a Non-ASCII upperCase word is called.
    expect('ПРИВЕТ'.isLowerCase, false);

    /// Expected True when a Non-ASCII lowerCase word is called.
    expect('привет'.isLowerCase, true);

    /// Expect True when a Single case Non-ASCII word is called.
    expect('مرحبا'.isLowerCase, true);
  });

  test('isUpperCase', () {
    /// Expected True when Empty string `""` is called.
    expect(''.isUpperCase, true);

    /// Expected False when a lowerCase Alphabet is called.
    expect('hello world'.isUpperCase, false);

    /// Expected True when a upperCase Alphabet is called.
    expect('HELLO WORLD'.isUpperCase, true);

    /// Expected False when both upperCase and lowerCase Alphabet is called.
    expect('Hello World'.isUpperCase, false);

    /// Expected True when a number is called
    expect('1234'.isUpperCase, true);

    /// Expected True when a word containing special Character is called.
    expect('@#&!'.isUpperCase, true);

    /// Expected True when a Non-ASCII upperCase word is called.
    expect('ПРИВЕТ'.isUpperCase, true);

    /// Expected False when a Non-ASCII lowerCase word is called.
    expect('привет'.isUpperCase, false);

    /// Expect True when a Single case Non-ASCII word is called.
    expect('مرحبا'.isUpperCase, true);
  });

  test('isAlNum', () {
    /// Expected False when a empty String `""` is called.
    expect(''.isAlNum, false);

    /// Expected True when a letters is called.
    expect('Hello'.isAlNum, true);

    /// Expected True when a numbers is called.
    expect('1234'.isAlNum, true);

    /// Expected True when both numbers and letters is called.
    expect('Hello1234'.isAlNum, true);

    /// Expect False if the String THIS contains Space is called.
    expect('Hello 1234'.isAlNum, false);

    /// Expect False if the Special characters is called.
    expect('!@#&'.isAlNum, false);

    /// Expect True when a Non-ASCII word and numbers is called.
    expect('مرحبا٦٥'.isAlNum, true);

    /// Expect True when a Non-ASCII word is called.
    expect('ПРИВЕТ'.isAlNum, true);
  });

  test('isAlpha', () {
    /// Expected False when a empty String `""` is called.
    expect(''.isAlpha, false);

    /// Expected True when a letters is called.
    expect('Hello'.isAlpha, true);

    /// Expected False when a numbers is called.
    expect('1234'.isAlpha, false);

    /// Expected False when both numbers and letters is called.
    expect('Hello1234'.isAlpha, false);

    /// Expect False if the String THIS contains Space is called.
    expect('Hello 1234'.isAlpha, false);

    /// Expect False if the Special characters is called.
    expect('!@#&'.isAlpha, false);

    /// Expect False when a Non-ASCII word and numbers is called.
    expect('مرحبا٦٥'.isAlpha, false);

    /// Expect True when a Non-ASCII word is called.
    expect('ПРИВЕТ'.isAlpha, true);
  });

  test('isInteger', () {
    /// Expected False when a empty String `""` is called.
    expect(''.isInteger, false);

    /// Expected False when a letters is called.
    expect('Hello'.isInteger, false);

    /// Expected True when a numbers is called.
    expect('1234'.isInteger, true);

    /// Expected False when both numbers and letters is called.
    expect('Hello1234'.isInteger, false);

    /// Expect False if the String THIS contains Space is called.
    expect('Hello 1234'.isInteger, false);

    /// Expect False if the Special characters is called.
    expect('!@#&'.isInteger, false);

    /// Expect False when a Non-ASCII word and numbers is called.
    expect('مرحبا٦٥'.isInteger, false);

    /// Expect True when a Non-ASCII numbers is called.
    expect('٦٥'.isInteger, true);

    /// Expect False when a Non-ASCII word is called.
    expect('ПРИВЕТ'.isInteger, false);
  });

  test('isIdentifier', () {
    /// Expected False when a empty String `""` is called.
    expect(''.isIdentifier, false);

    /// Expected True when a letters is called.
    expect('Hello'.isIdentifier, true);

    /// Expected False when a String is start from numbers is called.
    expect('1234'.isIdentifier, false);

    /// Expected True when both numbers and letters is called.
    expect('Hello1234'.isIdentifier, true);

    /// Expect False if the String THIS contains Space is called.
    expect('Hello 1234'.isIdentifier, false);

    /// Expect False if the Special characters is called otherthan _ underscore.
    expect('!@#&'.isIdentifier, false);

    /// Expect True if a String contain underscore is called.
    expect('Hello_12'.isIdentifier, true);

    /// Expect True when a Non-ASCII word and numbers is called.
    expect('مرحبا٦٥'.isIdentifier, true);

    /// Expect True when a Non-ASCII word is called.
    expect('ПРИВЕТ'.isIdentifier, true);
  });

  test('iterable', () {
    /// Expect a empty List when a empty string is called.
    expect(''.iterable, []);

    /// Expect to iterate all the characters in a String.
    expect('Hello'.iterable, ['H', 'e', 'l', 'l', 'o']);
    expect('H 1@'.iterable, ['H', ' ', '1', '@']);
    expect('مرحبا٦٥'.iterable, ['م', 'ر', 'ح', 'ب', 'ا', '٦', '٥']);
    expect('ПРИВЕТ'.iterable, ['П', 'Р', 'И', 'В', 'Е', 'Т']);
  });

  test('first', () {
    /// throw StateErrro when String is empty
    expect(() => ''.first, throwsStateError);

    /// Expect to return a first character from a String
    expect('Hello'.first, 'H');
    expect('مرحبا٦٥'.first, 'م');
    expect('ПРИВЕТ'.first, 'П');
  });

  test('last', () {
    /// throw StateErrro when String is empty
    expect(() => ''.last, throwsStateError);

    /// Expect to return a first character from a String
    expect('Hello'.last, 'o');
    expect('مرحبا'.last, 'ا');
    expect('ПРИВЕТ'.last, 'Т');
  });

  test('title', () {
    /// Expected `""` when Empty string `""` is called.
    expect(''.title(), '');

    /// Expected a String with first letter in upperCase and the rest in lowerCase.
    expect('hello'.title(), 'Hello');
    expect('hello world'.title(), 'Hello World');

    /// Expected same String when a String comtaining only number is called
    expect('1234'.title(), '1234');

    /// Expected same String when a String comtaining only special characters is called
    expect('@#&!'.title(), '@#&!');

    /// Expected First letter Uppercase when a Non-ASCII upperCase and lowerCase word is called.
    expect('ПРИВЕТ привет'.title(), 'Привет Привет');

    /// Expect same String when a string containing Single case Non-ASCII word is called.
    expect('مرحبا'.title(), 'مرحبا');
  });

  test('swapcase', () {
    /// Expected `""` when Empty string `""` is called.
    expect(''.swapcase(), '');

    /// Expected a String with opposite Case of the String which is called.
    expect('hello'.swapcase(), 'HELLO');
    expect('HELLO'.swapcase(), 'hello');
    expect('heLLo'.swapcase(), 'HEllO');
    expect('Hello World'.swapcase(), 'hELLO wORLD');
    expect('hello_123'.swapcase(), 'HELLO_123');

    /// Expected same String when a String comtaining only number is called
    expect('1234'.swapcase(), '1234');

    /// Expected same String when a String comtaining only special characters is called
    expect('@#&!'.swapcase(), '@#&!');

    /// Expected opposite case when a Non-ASCII word is called.
    expect('ПРИВЕТ'.swapcase(), 'привет');
    expect('привет'.swapcase(), 'ПРИВЕТ');

    /// Expect same String when a string containing Single case Non-ASCII word is called.
    expect('مرحبا'.swapcase(), 'مرحبا');
  });

  test('charAt', () {
    /// index should not be empty string.
    expect(() => ''.charAt(0), throwsRangeError);

    /// index should not be negative.
    expect(() => 'hello'.charAt(-1), throwsRangeError);

    /// index should not be greater than input String.
    expect(() => 'hello'.charAt(6), throwsRangeError);

    /// Expected a single character's length when the function is called.
    expect('hello'.charAt(1).length, 1);

    /// Expected a character when the fuction is called.
    expect('Hello'.charAt(0), 'H');

    /// Expected to return non-ASCII character when it is called.
    expect('ПРИВЕТ'.charAt(2), 'И');
    expect('مرحبا'.charAt(3), 'ب');
  });

  test('similarity', () {
    /// Expected 0 when empty String is Compared to empty String
    expect(''.similarity(''), 0);

    /// Expected 0 when there is no match
    expect('hello'.similarity('Ab987'), 0);

    /// Expected 4 since letter 'l' is consider as length of 1.
    expect('Hello Hello'.similarity('Hello'), 4);

    /// Expected Number of Matcher String contains in actual String.
    expect('Hello Hello'.similarity('Hello', isWordComparison: true), 1);
    expect(
        'Hello This My Sentenece'
            .similarity('Hey This My Code', isWordComparison: true),
        2);
    expect('Hello This My Sentenece'.similarity('Hey This My Code'), 10);

    /// Comparison when word serach is true
    expect('123'.similarity('123'), 3);
    expect('123'.similarity('123', isWordComparison: true), 1);

    /// Similarity function is Case sensitive.
    expect('A'.similarity('a'), 0);
    expect('x'.similarity('X'), 0);

    /// Number of String in matcher contains in actual String when word serach is false.
    expect('Hello world'.similarity('ol'), 2);
    expect('Hello world'.similarity('lox'), 2);
    expect('Hello world'.similarity('l', isWordComparison: true), 0);

    /// Non-ASCII similarity
    expect('ПРИВЕТ'.similarity('ПРИ'), 3);
    expect('مرحبا'.similarity('مرح'), 3);
  });

  test('capitalize', () {
    /// Expected `""` when Empty string `""` is called.
    expect(''.capitalize(), '');

    /// Expected a String with first letter in upperCase and the rest in lowerCase.
    expect('hello'.capitalize(), 'Hello');
    expect('Hello World'.capitalize(), 'Hello world');

    /// Expected a actual String when only a number is called.
    expect('123'.capitalize(), '123');

    /// Expected a actual String when a Special Character is called.
    expect('@!^&'.capitalize(), '@!^&');

    /// Expected First letter Uppercase when a Non-ASCII upperCase and lowerCase word is called.
    expect('ПРИВЕТ ПРИВЕТ'.capitalize(), 'Привет привет');
    expect('привет'.capitalize(), 'Привет');

    /// Expect same String when a string containing Single case Non-ASCII word is called.
    expect('مرحبا'.capitalize(), 'مرحبا');
  });

  test('center', () {
    /// character length should not be more than one.
    expect(() => 'Hello'.center(4, 'as'), throwsAssertionError);

    /// Add space on both side if character is null
    expect('123'.center(7), '  123  ');

    /// Add character on both side if character is null
    expect('Hello'.center(9, '-'), '--Hello--');
    expect('ПРИВЕТ'.center(8, '-'), '-ПРИВЕТ-');

    /// Expect actual String when emptyString provided.
    expect('Hello'.center(4, ''), 'Hello');
  });

  test('count', () {
    /// index should not be Negative or greater than input String.
    expect(() => 'Hello'.count('H', -1), throwsRangeError);
    expect(() => 'Hello'.count('H', 7), throwsRangeError);

    /// Expected 1 when empty String is count with empty string.
    expect(''.count(''), 1);

    /// Expected 0 when there is no match
    expect('Hello'.count('A'), 0);

    /// Expected some number when is match
    expect('Hello'.count('H'), 1);
    expect('HelloHello Hello'.count('Hello'), 3);

    /// Expected some number when is match with start and end provide
    expect('Hello'.count('H', 1), 0);
    expect('Hello'.count('l', 0, 3), 1);

    /// value is case sensitive. Means both upperCase and lowerCase treat as different.
    expect('Hello'.count('h'), 0);

    /// Expected to return non-ASCII character when it is called.
    expect('ПРИВЕТ'.count('И'), 1);
    expect('مرحبا مرحبا'.count('مر'), 2);
  });

  test('expandTabs', () {
    /// Default Tab size is 8
    expect('H\te\tl\tl\to'.expandTabs(), 'H\te\tl\tl\to');

    /// if Tab size is not null
    expect('H\te\tl\tl\to'.expandTabs(2), 'H e l l o');
    expect('H\te\tl\tl\to'.expandTabs(4), 'H   e   l   l   o');
  });

  test('toCamelCase', () {
    /// Expected `""` when Empty string `""` is called.
    expect(''.toCamelCase(), '');

    expect('hello'.toCamelCase(), 'Hello');
    expect('hello'.toCamelCase(isLowerCamelCase: true), 'hello');

    expect('hello world_dart'.toCamelCase(isLowerCamelCase: true),
        'helloWorldDart');

    /// Expected to match the string
    expect('hello_world'.toCamelCase(), 'HelloWorld');
    expect('hello world'.toCamelCase(), 'HelloWorld');

    /// Expected a actual String without Space when only a number is called.
    expect('123 123'.toCamelCase(), '123123');

    /// Expected a actual String without Space when a Special Character is called.
    expect('@! ^&'.toCamelCase(), '@!^&');

    /// Expect first character to lower string when isLowerCamelCase is set as true
    expect('Hello world'.toCamelCase(isLowerCamelCase: true), 'helloWorld');

    /// Expected First letter Uppercase when a Non-ASCII upperCase and lowerCase word is called.
    expect('ПРИВЕТ привет'.toCamelCase(), 'ПриветПривет');

    /// Expect same String when a string containing Single case Non-ASCII word is called.
    expect('مرحبا مرحبا'.toCamelCase(), 'مرحبامرحبا');

    expect('hello '.toCamelCase(), 'Hello');
    expect('_hello'.toCamelCase(), 'Hello');
  });
}
