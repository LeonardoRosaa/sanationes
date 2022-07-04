import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:sanationes/src/extensions/string.dart';

void main() {
  group('String extension', () {
    group('email', () {

      test('should be an email with long domain', () {
        expect('peter@parker.industry'.isEmail, isTrue);
         expect('peter@industry.network'.isEmail, isTrue);
      });

      test('should be email', () {
        expect('peter@gmail.com'.isEmail, isTrue);
      });

      test('should be incomplete email', () {
        expect('peter@'.isEmail, isFalse);
      });

      test('can not use +number trick', () {
        expect('peter+1@gmail.com'.isEmail, isFalse);
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

    group('Special characters', () {
      test('should be replace all special characters', () {
        expect(
          '#My n@m& is/ Peter P@rker'.replaceSpecialCharacters(''),
          'My nm is Peter Prker',
        );
      });

      test('should be replace all special characters between numbers', () {
        expect(
          'My numb&r !s 974#9-&18&'.replaceSpecialCharacters(''),
          'My numbr s 974918',
        );
      });

      test('should can not replace special characters', () {
        expect(
          'My name is Peter Parker'.replaceSpecialCharacters(''),
          'My name is Peter Parker',
        );
      });
    });
  });
}
