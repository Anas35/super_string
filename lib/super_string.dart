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
  bool get isUpperCase => this == this.toUpperCase();

  /// Return `true` if all characters in the string are in lowerCase.
  ///
  /// Example :
  ///
  /// ```
  /// print('this'.isLowerCase); // true
  /// print('THIS'.isLowerCase); // false
  /// ```
  ///
  bool get isLowerCase => this == this.toLowerCase();

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
  bool get isAlNum => RegExp(r"^[a-zA-Z0-9]+$").hasMatch(this);

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
  bool get isAlpha => RegExp(r"^[a-zA-Z]+$").hasMatch(this);

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
  bool get isInteger => RegExp(r"^[0-9]+$").hasMatch(this);

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
      RegExp(r"^[_a-zA-Z0-9]+$").hasMatch(this) && !this[0].isInteger;

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
    List<String> words = this.split(' ');
    StringBuffer str = StringBuffer();

    List<String> capitalizeWords = [];

    if (this.contains(' ') && !this.endsWith(' ')) {
      words.forEach((e) => capitalizeWords.add(e.capitalize()));
      str.writeAll(capitalizeWords, ' ');
      return str.toString();
    } else {
      return this.capitalize();
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
    StringBuffer str = StringBuffer();

    for (int i = 0; i < this.length; i++) {
      if (this.charAt(i) == this.charAt(i).toUpperCase()) {
        str.write(this.charAt(i).toLowerCase());
      } else {
        str.write(this.charAt(i).toUpperCase());
      }
    }

    return this.isNotEmpty ? str.toString() : this;
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
  /// Throws an [AssertionError] if `index` is negative or greater than String's length.
  ///
  String charAt(int index) {
    assert(this.isNotEmpty, 'String should not be empty');
    assert(!index.isNegative && index < this.length,
        'Index should be not be negative or greater than String length');
    return this[index];
  }

  /// Returns the number of matching characters of two strings.
  ///
  /// Example :
  ///
  /// ```
  /// print('This'.similarity('This')); // 4
  /// print('this'.similarity('THis')); // 2
  /// ```
  ///
  int similarity(String value) {
    int similar = 0;

    for (int i = 0; i < this.length; i++) {
      if (value.contains(this.charAt(i))) {
        value = value.replaceFirst(this.charAt(i), "");
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
  String capitalize() => this.isNotEmpty
      ? this[0].toUpperCase() + this.substring(1).toLowerCase()
      : this;

  /// Return a `String` of specified length width which is align in center, using the specified
  /// character.
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
  String center(int length, [String? character]) {
    assert(character == null || character.length <= 1,
        "character's length should be equal to 1");

    StringBuffer str = StringBuffer();
    String char = character ?? ' ';
    int times = length - this.length;

    times.isOdd
        ? str.write(char * (times ~/ 2 + 1))
        : str.write(char * (times ~/ 2));
    str.write(this);
    str.write(char * (times ~/ 2));

    return !times.isNegative ? str.toString() : this;
  }

  /// Return the number of times a specified `value` appears in the string.
  ///
  /// The position to `start` the search is 0 if the optional arguments `start` is `null`.
  /// The position to `end` the search is the end of the string if the optional arguments `end` is `null`.
  ///
  /// Example :
  ///
  /// ```
  /// print('this'.count('t')); // 1
  /// print('hello'.count('l')); // 2
  /// print('hello'.count('l',0,2)); // 2
  /// ```
  ///
  int count(String value, [int? start, int? end]) =>
      value.allMatches(this.substring(start ?? 0, end)).length;

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
      size == null ? this : this.replaceAll('\t', ' ' * (size - 1));
}
