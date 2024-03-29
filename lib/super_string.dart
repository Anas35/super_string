library super_string;

extension SuperString on String {
  /// Return `true` if all characters in the string are in upperCase.
  ///
  /// Example :
  ///
  /// ```
  /// print('this'.isUpperCase); // false
  /// print('THIS'.isUpperCase); // true
  /// ```
  ///
  bool get isUpperCase => this == toUpperCase();

  /// Return `true` if all characters in the string are in lowerCase.
  ///
  /// Example :
  ///
  /// ```
  /// print('this'.isLowerCase); // true
  /// print('THIS'.isLowerCase); // false
  /// ```
  ///
  bool get isLowerCase => this == toLowerCase();

  /// Return `true` if all the characters are alphanumeric (alphabet letter (a-z) and numbers (0-9)).
  ///
  /// Example :
  ///
  /// ```
  /// print('This123'.isAlNum); // true
  /// print('123'.isAlNum); // true
  /// print('This@123'.isAlNum); // false
  /// ```
  ///
  bool get isAlNum => RegExp(r'^[\p{L}\p{N}]+$', unicode: true).hasMatch(this);

  /// Return `true` if all the characters are alphabets letter (a-z).
  ///
  /// Example :
  ///
  /// ```
  /// print('This'.isAlpha); // true
  /// print('A1'.isAlpha); // false
  /// print('This@123'.isAlpha); // false
  /// ```
  ///
  bool get isAlpha => RegExp(r'^\p{L}+$', unicode: true).hasMatch(this);

  /// Return `true` if all the characters are [int] (0-9).
  ///
  /// Example :
  ///
  /// ```
  /// print('This123'.isAlNum); // false
  /// print('123'.isAlNum); // true
  /// print('This@123'.isAlNum); // false
  /// ```
  ///
  bool get isInteger => RegExp(r'^\p{N}+$', unicode: true).hasMatch(this);

  /// Return `true` if the string contains only alphanumeric letters (a-z) , (0-9) and
  /// underscores (_).
  ///
  /// A valid identifier cannot start with a number, or contain any spaces.
  ///
  /// Example :
  ///
  /// ```
  /// print('This123'.isIdentifier); // true
  /// print('This 123'.isIdentifier); // false
  /// print('123This'.isIdentifier); // false
  /// print('This@123'.isIdentifier); // false
  /// print('This_123'.isIdentifier); // true
  /// ```
  ///
  bool get isIdentifier =>
      RegExp(r'^[\p{L}\p{N}_]+$', unicode: true).hasMatch(this) &&
      !first.isInteger;

  /// Return a [Iterable] containing all the characters of the string.
  ///
  /// If `this` is empty, its returns a empty [Iterable]
  ///
  /// Example :
  ///
  /// ```
  /// print('Hello'.iterable); // ['H','e','l','l','o',]
  /// print('A B'.iterable); // ['A', ' ', 'B']
  /// ```
  ///
  Iterable<String> get iterable =>
      runes.map((int rune) => String.fromCharCode(rune));

  /// Return the first charcter of a string
  ///
  /// Throws a [StateError] if `this` is empty.
  ///
  String get first => String.fromCharCode(runes.first);

  /// Return the last charcter of a string
  ///
  /// Throws a [StateError] if `this` is empty.
  ///
  String get last => String.fromCharCode(runes.last);

  /// Return a `String` where first character of every words is converted to upperCase.
  ///
  /// Example :
  /// ```
  /// print('this123'.title()); // 'This123'
  /// print('This is title'.title()); // 'This Is Title'
  /// print('tHiS iS tiTle'.title()); // 'This Is Title'
  /// ```
  ///
  String title() {
    final List<String> words = split(' ');

    if (contains(' ')) {
      words.setAll(0, words.map((element) => element.capitalize()));
      return words.join(' ');
    } else {
      return capitalize();
    }
  }

  /// Return a `String` where all the upperCase letters are converted to lowerCase and vice versa.
  ///
  /// Example :
  ///
  /// ```
  /// print('tHiS'.swapcase()); // 'ThIs'
  /// print('HeLlO'.swapcase()); // 'hElLo'
  /// ```
  ///
  String swapcase() {
    final StringBuffer str = StringBuffer();

    for (var char in iterable) {
      str.write(char.isUpperCase ? char.toLowerCase() : char.toUpperCase());
    }

    return isNotEmpty ? str.toString() : this;
  }

  /// Returns the character at the specified `index` in a string.
  ///
  ///
  /// Example :
  ///
  /// ```
  /// print('This'.charAt(0)); // 'T'
  /// print('This'.charAt(3)); // 's'
  /// ```
  ///
  /// Throws an [RangeError] if `index` is negative or greater than String's length.
  ///
  String charAt(int index) => iterable.elementAt(index);

  /// Returns the number of matching characters of two strings.
  ///
  /// If the `isWordComparison` is `true` then Return the number
  /// of matching word of two strings.
  ///
  /// The defualt Value of `isWordComparison` is false.
  ///
  /// Example :
  ///
  /// ```
  /// print('Hello World'.similarity('Hello All')); // 5 => [H, e, l, o, ' ']
  /// print('Hello World'.similarity('Hello All', isWordsComparison: true)); // 1
  /// ```
  ///
  int similarity(String matcher, {bool isWordComparison = false}) {
    int similar = 0;

    List<String> _subStr = [];

    if (isWordComparison) {
      _subStr = contains(' ') ? split(' ') : [this];
    } else {
      _subStr.addAll(iterable);
    }

    for (String str in _subStr) {
      if (matcher.contains(str)) {
        matcher = matcher.replaceAll(str, '');
        similar++;
      }
    }
    return similar;
  }

  /// Return a `String` with its first character UpperCase and the rest LowerCase.
  ///
  /// Example :
  ///
  /// ```
  /// print('this'.capitalize()); // 'This'
  /// print('THIS'.capitalize()); // 'This'
  /// ```
  ///
  String capitalize() =>
      isNotEmpty ? first.toUpperCase() + substring(1).toLowerCase() : this;

  /// Return a `String` of specified length width which is align in center, using the specified
  /// character.
  ///
  /// The default value of character is space ' '.
  ///
  /// Example :
  ///
  /// ```
  /// print('this'.center(6)); // ' this ';
  /// print('this'.center(7,'0')); // '00this0'
  /// ```
  ///
  /// Throws an [AssertionError] if character's length is greater than 1.
  ///
  String center(int length, [String character = ' ']) {
    assert(character.length <= 1, "character's length should be equal to 1");

    final StringBuffer str = StringBuffer();
    final int len = length - this.length;

    final int times = len ~/ 2;

    str.writeAll([
      len.isOdd ? character * (times + 1) : character * times,
      this,
      character * times,
    ]);

    return len.isNegative ? this : str.toString();
  }

  /// Return the number of times a specified `value` appears in the string.
  ///
  /// The default value of `start` is 0 if the optional arguments `start` is not assigned.
  /// The default value of `end` is the end of the string if the optional arguments `end` is `null`.
  ///
  /// Example :
  ///
  /// ```
  /// print('this'.count('t')); // 1
  /// print('hello'.count('l')); // 2
  /// print('hello'.count('l',0,2)); // 2
  /// ```
  ///
  int count(String value, [int start = 0, int? end]) =>
      value.allMatches(substring(start, end)).length;

  /// expandTabs method sets the tab size to the specified number of whitespaces.
  ///
  /// Default `size` is 8.
  ///
  /// Example :
  ///
  /// ```
  /// print('a\ta'.expandTabs(2)); // 'a a'
  /// ```
  ///
  String expandTabs([int? size]) =>
      size == null ? this : replaceAll('\t', ' ' * (size - 1));

  /// Convert the given string to camelCase.
  ///
  /// By default `isLowerCamelCase` is set as `false` and the given string is converted into UpperCamelCase.
  /// That means the first letter of String is converted into upperCase.
  ///
  /// If the `isLowerCamelCase` is set to `true` then camelCase produces lowerCamelCase.
  /// That means the first letter of String is converted into lowerCase.
  ///
  /// If the String is empty, this method returns `this`.
  ///
  /// Example :
  ///
  /// ```
  /// print('hello World'.toCamelCase()); // HelloWorld
  /// print('hello_World'.toCamelCase()); // HelloWorld
  /// print('hello World'.toCamelCase(isLowerCamelCase: true)); // helloWorld
  /// ```
  ///
  String toCamelCase({bool isLowerCamelCase = false}) {
    final Pattern pattern = RegExp(r'[ _]');

    Iterable<String> itrStr = split(pattern);
    final List<String> answer = [];

    final String first = itrStr.first;
    answer.add(isLowerCamelCase ? first.toLowerCase() : first.capitalize());

    itrStr = itrStr.skip(1);

    if (contains(pattern)) {
      for (var string in itrStr) {
        answer.add(string.capitalize());
      }
    } else {
      return isLowerCamelCase ? toLowerCase() : capitalize();
    }

    return answer.join();
  }

  /// check if `this` contains all the value from `list`
  ///
  /// return false if one of value in `list` are not in `this`
  ///
  /// Example:
  ///
  /// ```
  /// print('This is my code'.containsAll(['This','code'])); // => true
  /// print('This is my code'.containsAll(['code','hello'])); // => false
  /// ```
  ///
  bool containsAll(Iterable<String> values) => values.every(contains);

  /// check if `this` contains any one of the value from `list`
  ///
  /// Example:
  ///
  /// ```
  /// print('This is my code'.containsAny(['code','hello'])); // => true
  /// print('This is my code'.containsAny(['hello','world'])); // => false
  /// ```
  ///
  bool containsAny(Iterable<String> values) => values.any(contains);

  /// Return a String wrapped at the specified length.
  ///
  /// | Name | Description | Default Value |
  /// |------|-------------|------|
  /// | `width` | The number of characters at which the string will be wrapped | `75` |
  /// | `lineBreak` | The characters which will use as break | `"\n"` |
  /// | `cutWord` | Specifies whether a word exceeded width should be break | `false` |
  ///
  /// Example:
  ///
  /// ```
  /// print('Hello World'.wordWrap(width: 3)); // => 'Hello\nWorld'
  /// print('Hello World'.wordWrap(width: 3, lineBreak: '\t')); // => 'Hello\tWorld'
  /// print('Hello World'.wordWrap(width: 3, cutWord: true)); // => 'Hel\nlo\nWor\nld'
  /// ```
  ///
  String wordWrap(
      {int width = 75, String lineBreak = '\n', bool cutWord = false}) {
    final List<String> words = trim().split(RegExp(r' |\n|\t'));
    final List<String> lines = [];

    if (cutWord) {
      final List<String> longWords =
          words.skipWhile((value) => value.length < width).toList();

      for (var word in longWords) {
        final List<String> reducedWord = [];
        final String temp = word;

        while (word.isNotEmpty) {
          final int range = word.length > width ? width : word.length;

          reducedWord.add(word.substring(0, range).trim());
          word = word.replaceRange(0, range, '');
        }

        words.insertAll(words.indexOf(temp), reducedWord);
        words.remove(temp);
      }
    }

    while (words.isNotEmpty) {
      for (int i = 0; i < words.length; i++) {
        final String line = words
            .getRange(0, words.length - i)
            .reduce((value, element) => '$value $element');

        if (line.length <= width ||
            (words.length - i == 1 && line.length > width)) {
          lines.add(line);
          words.removeRange(0, words.length - i);
          break;
        }
      }
    }

    return lines.join(lineBreak);
  }
}
