# Riverpod: code generation, freezed y json_serializable 

This repository demonstrates how to integrate and use Riverpod with code generation, Freezed, and json_serializable in a Flutter project. These tools facilitate state management, the generation of immutable classes, and JSON serialization/deserialization, respectively.

#### Advantages of Using freezed and json_serializable

1.  Immutability and Safety: freezed facilitates the creation of immutable classes with optional, required, and safely copyable properties. This helps prevent errors and makes state management easier.
2.  Equality and Comparison: freezed automatically generates == and hashCode methods, making object comparison straightforward.
3.  Serialization: json_serializable simplifies the conversion between JSON and Dart objects. This is especially useful for applications that interact with RESTful APIs or store data locally.
4.  Efficiency: Code generation saves time and reduces errors, ensuring that data models are consistent and easy to maintain.
5.  Compatibility with Riverpod: Models generated with freezed integrate well with Riverpod state providers, allowing for more robust and predictable state management.

## Step 1: Generate the auto-generated code

run in the terminal to generate code
```bash
dart run build_runner watch
```

## Step 2: main configuration
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope( //wraps to main widget
      child: MyApp(),
    ),
  );
}
```


## Documentation

Official website [here](https://riverpod.dev/es/docs/concepts/about_code_generation)