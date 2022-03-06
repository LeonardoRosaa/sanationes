import 'package:equatable/equatable.dart';

/// There's every regular expression to use
class RegularExpression extends Equatable {
  const RegularExpression();

  /// [email] regular expression
  RegExp get email => RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  @override
  List<Object?> get props => [email];
}
