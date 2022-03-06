import 'package:sanationes/src/regular_expression.dart';
import 'package:sanationes/src/validations.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  const validation = Validations(expression: RegularExpression());

  group('Validations', () {
    group('email', () {
      test('should be email', () {
        expect(validation.isEmail('peter@gmail.com'), isTrue);
      });

      test('should be incomplete email', () {
        expect(validation.isEmail('peter@'), isFalse);
      });

      test('can not use +number trick', () {
        expect(validation.isEmail('peter+1@gmail.com'), isFalse);
      });
    });

    group('Brazil post code', () {
      test('should be a post code', () {
        expect(validation.isBrazilPostCode('69945-970'), isTrue);
      });

      test('should be an incomplete post code', () {
        expect(validation.isBrazilPostCode('69945-9'), isFalse);
      });

      test('should be a wrong post code', () {
        expect(validation.isBrazilPostCode('699A5-9AA'), isFalse);
      });
    });
  });
}
