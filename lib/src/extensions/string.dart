import 'package:sanationes/sanationes.dart';

extension StringExtension on String {
  /// Does makes validation to check this String is even an email
  ///
  /// Example
  /// ```dart
  /// isEmail('peter@gmail.com'); // true
  /// isEmail('peter@') // false
  /// isEmail('peter+1@gmail.com') // false
  /// ```
  bool get isEmail => Validations.instance().isEmail(this);

  /// This method does make a validate to check [value] is even
  /// a Brazil post code
  ///
  /// Example
  /// ```dart
  /// isBrazilPostCode('69945-970'); // true
  /// isBrazilPostCode('69945-9') // false
  /// isBrazilPostCode('699A5-9AA') // false
  /// ```
  bool get isBrazilPostCode => Validations.instance().isBrazilPostCode(this);

  /// This method does make a replace of all special
  /// characters by [replace] value
  ///
  /// Example
  /// ```dart
  /// replaceSpecialCharacters('#My n@m& is/ Peter P@rker'); // My nm is Peter Prker
  /// replaceSpecialCharacters('My numb&r !s 974#9-&18&') // My numbr s 974918
  /// replaceSpecialCharacters('My name is Peter Parker') // My name is Peter Parker
  /// ```
  String replaceSpecialCharacters(String replace) =>
      Validations.instance().replaceSpecialCharacters(
        this,
        replace,
      );
}
