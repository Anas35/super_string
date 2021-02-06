import 'package:test/test.dart';

import 'package:super_string/super_string.dart';

void main() {
  const String emptyString = '';
  const String lowerCaseCharacter = 'a';
  const String upperCasecharacter = 'A';
  const String number = '1';
  const String multiCaseWord = "hEllo";
  const String multiCaseWordWithNumber = "Hello123";
  const String specialCharacter = "@";
  const String lowerCaseSentence = 'this sentence contain multiply words';
  const String upperCaseSentence = 'THIS SENTENCE CONTAIN MULTIPLY WORDS';
  const String multiCaseSentence = 'This Sentence contain Multiply words';
  const String identifier = 'hello_123';
  const String tab = 'H\te\tl\tl\to';

  final Matcher throwsAssertionError = throwsA(isA<AssertionError>());

  test('isLowerCase', () async {
    /// Expected True when Empty string `""` is called.
    expect(emptyString.isLowerCase, true);

    /// Expected True when a lowerCase Alphabet is called.
    expect(lowerCaseCharacter.isLowerCase, true);

    /// Expected False when a upperCase Alphabet is called.
    expect(upperCasecharacter.isLowerCase, false);

    /// Expected True when a number is called
    expect(number.isLowerCase, true);

    /// Expected False when a word containing both upperCase and lowerCase is called.
    expect(multiCaseWord.isLowerCase, false);

    /// Expected True when a word containing special Character is called.
    expect(specialCharacter.isLowerCase, true);

    /// Expected True when a sentence containing lowerCase is called.
    expect(lowerCaseSentence.isLowerCase, true);

    /// Expected False when a sentence containing upperCase is called.
    expect(upperCaseSentence.isLowerCase, false);

    /// Expected False when a sentence containing both upperCase and lowerCase is called.
    expect(multiCaseSentence.isLowerCase, false);
  });

  test('isUpperCase', () async {
    /// Expected True when Empty string `""` is called.
    expect(emptyString.isUpperCase, true);

    /// Expected False when a lowerCase Alphabet is called.
    expect(lowerCaseCharacter.isUpperCase, false);

    /// Expected True when a upperCase Alphabet is called.
    expect(upperCasecharacter.isUpperCase, true);

    /// Expected True when a number is called
    expect(number.isUpperCase, true);

    /// Expected False when a word containing both upperCase and lowerCase is called.
    expect(multiCaseWord.isUpperCase, false);

    /// Expected True when a word containing special Character is called.
    expect(specialCharacter.isUpperCase, true);

    /// Expected False when a sentence containing lowerCase is called.
    expect(lowerCaseSentence.isUpperCase, false);

    /// Expected True when a sentence containing upperCase is called.
    expect(upperCaseSentence.isUpperCase, true);

    /// Expected False when a sentence containing both upperCase and lowerCase is called.
    expect(multiCaseSentence.isUpperCase, false);
  });

  test('isAlNum', () async {
    /// Expected False when a empty String `""` is called.
    expect(emptyString.isAlNum, false);

    /// Expected True when a words conatining Alphabets and numbers is called.
    expect(multiCaseWord.isAlNum, true);
    expect(multiCaseWordWithNumber.isAlNum, true);

    /// Expected False when a senetence is called.
    expect(multiCaseSentence.isAlNum, false);

    /// Expected False when a special character is called.
    expect(specialCharacter.isAlNum, false);
  });

  test('isAlpha', () async {
    /// Expected False when a empty String `""` is called.
    expect(emptyString.isAlpha, false);

    /// Expected True when a words conatining only Alphabets called.
    expect(multiCaseWord.isAlpha, true);

    /// Expected False when a words conatining both Alphabets and Number called.
    expect(multiCaseWordWithNumber.isAlpha, false);

    /// Expected False when a senetence is called.
    expect(multiCaseSentence.isAlpha, false);

    /// Expected False when a special character is called.
    expect(specialCharacter.isAlpha, false);
  });

  test('isInteger', () async {
    /// Expected False when a empty String `""` is called.
    expect(emptyString.isInteger, false);

    /// Expected True when a number is called
    expect(number.isInteger, true);

    /// Expected False when a words conatining only Alphabets called.
    expect(multiCaseWord.isInteger, false);

    /// Expected False when a words conatining both Alphabets and Number called.
    expect(multiCaseWordWithNumber.isInteger, false);

    /// Expected False when a senetence is called.
    expect(multiCaseSentence.isInteger, false);

    /// Expected False when a special character is called.
    expect(specialCharacter.isInteger, false);
  });

  test('isIdentifier', () async {
    /// Expected False when a empty String `""` is called.
    expect(emptyString.isIdentifier, false);

    /// Expected False when a number is called. Since Indentifier should
    /// not start with numbers.
    expect(number.isIdentifier, false);

    /// Expected True when a words conatining only Alphabets called.
    expect(multiCaseWord.isIdentifier, true);

    /// Expected True when a words conatining both Alphabets and Number called.
    expect(multiCaseWordWithNumber.isIdentifier, true);

    /// Expected False when a senetence is called.
    expect(multiCaseSentence.isIdentifier, false);

    /// Expected False when a special character is called.
    expect(specialCharacter.isIdentifier, false);

    /// Expected False when a special character is called.
    expect(specialCharacter.isIdentifier, false);

    /// Expected True when a word containing `_` is called.
    expect(identifier.isIdentifier, true);
  });

  test('title', () {
    /// Expected `""` when Empty string `""` is called.
    expect(emptyString.title(), '');

    /// Expected a String with first letter in upperCase and the rest in lowerCase
    /// when a word or character is called.
    expect(lowerCaseCharacter.title(), 'A');
    expect(upperCasecharacter.title(), 'A');
    expect(multiCaseWord.title(), 'Hello');

    /// Expected a String with first letter in each word is in upperCase and the rest in lowerCase
    /// when a sentence is called.
    String expected = "This Sentence Contain Multiply Words";

    expect(lowerCaseSentence.title(), expected);
    expect(upperCaseSentence.title(), expected);
    expect(multiCaseSentence.title(), expected);
    expect(identifier.title(), 'Hello_123');

    /// Expected a actual String when only a number or Special Character is called.
    expect(number.title(), number);
    expect(specialCharacter.title(), specialCharacter);
  });

  test('swapcase', () {
    /// Expected `""` when Empty string `""` is called.
    expect(emptyString.swapcase(), '');

    /// Expected a String with opposite Case of the String which is called.
    expect(lowerCaseCharacter.swapcase(), 'A');
    expect(upperCasecharacter.swapcase(), 'a');
    expect(multiCaseWord.swapcase(), 'HeLLO');

    /// Expected a String with first letter in upperCase and the rest in lowerCase
    /// when a sentence is called.
    expect(lowerCaseSentence.swapcase(), upperCaseSentence);
    expect(upperCaseSentence.swapcase(), lowerCaseSentence);
    expect(
        multiCaseSentence.swapcase(), 'tHIS sENTENCE CONTAIN mULTIPLY WORDS');
    expect(identifier.swapcase(), 'HELLO_123');

    /// Expected a actual String when only a number or Special Character is called.
    expect(number.swapcase(), number);
    expect(specialCharacter.swapcase(), specialCharacter);
  });

  test('charAt', () {
    /// index should not be Negative or greater than input String and String should not be empty.
    expect(() => emptyString.charAt(0), throwsAssertionError);
    expect(() => multiCaseWord.charAt(-1), throwsAssertionError);
    expect(() => multiCaseWord.charAt(5), throwsAssertionError);

    /// Expected a single character's length when the function is called.
    expect(multiCaseWord.charAt(1).length, 1);

    /// Expected a single character when the fuction is called
    expect(multiCaseWord.charAt(0), 'h');
    expect(multiCaseWord.charAt(1), 'E');
  });

  test('similarity', () {
    /// Expected 0 when empty String is Compared to empty String
    expect(emptyString.similarity(''), 0);

    /// Expected 0 when there is no match
    expect(multiCaseWordWithNumber.similarity('Ab987'), 0);

    /// Expected some number when is match
    expect(multiCaseWordWithNumber.similarity('H'), 1);
    expect(multiCaseWordWithNumber.similarity('123'), 3);

    /// value is case sensitive. Means both upperCase and lowerCase treat as different.
    expect(multiCaseWordWithNumber.similarity('h'), 0);
  });

  test('capitalize', () {
    /// Expected `""` when Empty string `""` is called.
    expect(emptyString.capitalize(), '');

    /// Expected a String with first letter in upperCase and the rest in lowerCase
    /// when a word or character is called.
    expect(lowerCaseCharacter.capitalize(), 'A');
    expect(upperCasecharacter.capitalize(), 'A');
    expect(multiCaseWord.capitalize(), 'Hello');

    /// Expected a String with first letter in upperCase and the rest in lowerCase
    /// when a sentence is called.
    String expected = "This sentence contain multiply words";

    expect(lowerCaseSentence.capitalize(), expected);
    expect(upperCaseSentence.capitalize(), expected);
    expect(multiCaseSentence.capitalize(), expected);
    expect(identifier.capitalize(), 'Hello_123');

    /// Expected a actual String when only a number or Special Character is called.
    expect(number.capitalize(), number);
    expect(specialCharacter.capitalize(), specialCharacter);
  });

  test('center', () {
    /// character length should not be more than one.
    expect(() => multiCaseWord.center(4, 'as'), throwsAssertionError);

    /// Add space on both side if character is null
    expect(number.center(4, ' '), '  ' + number + ' ');
    expect(multiCaseWord.center(9), '  ' + multiCaseWord + '  ');

    /// Add character on both side if character is null
    expect(number.center(4, '0'), '00' + number + '0');
    expect(number.center(4, ''), number);
    expect(multiCaseWord.center(9, '0'), '00' + multiCaseWord + '00');
  });

  test('count', () {
    /// index should not be Negative or greater than input String.
    expect(() => multiCaseWord.count('H', -1), throwsRangeError);
    expect(() => multiCaseWord.count('H', 7), throwsRangeError);

    /// Expected 1 when empty String is count with empty string.
    expect(emptyString.count(''), 1);

    /// Expected 0 when there is no match
    expect(multiCaseWordWithNumber.count('A'), 0);

    /// Expected some number when is match
    expect(multiCaseWordWithNumber.count('H'), 1);
    expect(multiCaseWordWithNumber.count('l'), 2);
    expect(multiCaseWordWithNumber.count('123'), 1);

    /// Expected some number when is match with start and end provide
    expect(multiCaseWordWithNumber.count('H', 0), 1);
    expect(multiCaseWordWithNumber.count('H', 1), 0);
    expect(multiCaseWordWithNumber.count('l', 0, 3), 1);

    /// value is case sensitive. Means both upperCase and lowerCase treat as different.
    expect(multiCaseWordWithNumber.count('h'), 0);
  });

  test('expandTabs', () {
    /// Default Tab size is 8
    expect(tab.expandTabs(), tab);

    /// if Tab size is not null
    expect(tab.expandTabs(2), 'H e l l o');
    expect(tab.expandTabs(4), 'H   e   l   l   o');
  });
}
