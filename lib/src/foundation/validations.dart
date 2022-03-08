
import 'foundation.dart';

/// There's all methods to do validations with **regular expressions**
class Validations {
  const Validations({required this.expression});

  const Validations.instance()
      : this(
          expression: const RegularExpression(),
        );

  /// The **dependency** that has regular expression
  final RegularExpression expression;

  /// This method does make a validate to check [value] is even an email
  ///
  /// Example
  /// ```dart
  /// isEmail('peter@gmail.com'); // true
  /// isEmail('peter@') // false
  /// isEmail('peter+1@gmail.com') // false
  /// ```
  bool isEmail(String value) {
    return expression.email.hasMatch(value);
  }

  /// This method does make a validate to check [value] is even
  /// a Brazil post code
  ///
  /// Example
  /// ```dart
  /// isBrazilPostCode('69945-970'); // true
  /// isBrazilPostCode('69945-9') // false
  /// isBrazilPostCode('699A5-9AA') // false
  /// ```
  bool isBrazilPostCode(String value) =>
      expression.brazilPostCode.hasMatch(value);

  /// This method does make a replace of all special
  /// characters by [replace] value
  ///
  /// Example
  /// ```dart
  /// replaceSpecialCharacters('#My n@m& is/ Peter P@rker'); // My nm is Peter Prker
  /// replaceSpecialCharacters('My numb&r !s 974#9-&18&') // My numbr s 974918
  /// replaceSpecialCharacters('My name is Peter Parker') // My name is Peter Parker
  /// ```
  String replaceSpecialCharacters(String value, String replace) =>
      value.replaceAll(expression.onlyAlphanumeric, replace);
}
