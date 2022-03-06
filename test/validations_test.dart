import 'package:sanationes/src/regular_expression.dart';
import 'package:sanationes/src/validations.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  const validation = Validations(expression: RegularExpression());

  group('Validations', () {
    group('email', () {
      test('should be email', () {
        expect(validation.isEmail('peter@gmail.com'), true);
      });

      test('should be incomplete email', () {
        expect(validation.isEmail('peter@'), false);
      });

      test('can not use +number trick', () {
        expect(validation.isEmail('peter+1@gmail.com'), false);
      });
    });
  });
}
