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
}
