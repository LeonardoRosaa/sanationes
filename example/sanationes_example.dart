import 'package:sanationes/sanationes.dart';

void main() {
  print('peter@gmail.com'.isEmail);
  print('peter+1@gmail.com'.isEmail);
  
  print('6#%45-@70'.replaceSpecialCharacters('9'));

  print('69945-970'.isBrazilPostCode);
}
