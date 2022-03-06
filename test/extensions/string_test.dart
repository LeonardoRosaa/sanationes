import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:sanationes/src/extensions/string.dart';

void main() {
  group('String extension', () {
    group('email', () {
      test('should be email', () {
        expect('peter@gmail.com'.isEmail, true);
      });

      test('should be incomplete email', () {
        expect('peter@'.isEmail, false);
      });

      test('can not use +number trick', () {
        expect('peter+1@gmail.com'.isEmail, false);
      });
    });

    group('Brazil post code', () {
      test('should be a post code', () {
        expect('69945-970'.isBrazilPostCode, isTrue);
      });

      test('should be an incomplete post code', () {
        expect('69945-9'.isBrazilPostCode, isFalse);
      });

      test('should be a wrong post code', () {
        expect('699A5-9AA'.isBrazilPostCode, isFalse);
      });
    });
  });
}
