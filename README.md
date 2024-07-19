# Riverpod: code generation, freezed y json_serializable 

This repository demonstrates how to integrate and use Riverpod with code generation, Freezed, and json_serializable in a Flutter project. These tools facilitate state management, the generation of immutable classes, and JSON serialization/deserialization, respectively.

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