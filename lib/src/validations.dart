import 'package:sanationes/src/regular_expression.dart';

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
}
