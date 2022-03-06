import 'package:equatable/equatable.dart';

/// There's every regular expression to use
class RegularExpression extends Equatable {
  const RegularExpression();

  /// [email] regular expression
  RegExp get email => RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  /// [Brazil post code] expression
  RegExp get brazilPostCode => RegExp(r'^\d{5}-\d{3}$');

  @override
  List<Object?> get props => [email, brazilPostCode];
}
