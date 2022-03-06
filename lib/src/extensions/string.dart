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
}
