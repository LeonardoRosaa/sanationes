# Sanationes

A Dart package for all platforms to make some validations in native data types.

**Note**: it's a starting package, however, has some validations to add yet.

## Features

- Use external class to make validations;
- Use extension method to make validations;

## Installation

Easy and simple, add `sanationes` as a [dependency in your pubspec.yaml file](https://docs.flutter.dev/development/packages-and-plugins/using-packages).

## Usage

Generally, can you use by two ways, by external `Validations` class or `extensions` of data type.

Example by `Validations` class:

```dart
import 'package:sanationes/sanationes.dart';

void main() {
  print(Validations.instance().isEmail('peter@gmail.com')); // true
}
```

Or, by `extensions`:

```dart
import 'package:sanationes/sanationes.dart';

void main() {
  print('peter@gmail.com'.isEmail);
}
```

**Note**: it's a starting package, however, has some validations to add yet.
