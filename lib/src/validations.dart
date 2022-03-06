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
}
