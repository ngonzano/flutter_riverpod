# Riverpod: code generation, freezed y json_serializable 

This repository demonstrates how to integrate and use Riverpod with code generation, Freezed, and json_serializable in a Flutter project. These tools facilitate state management, the generation of immutable classes, and JSON serialization/deserialization, respectively.

## Step 1: Setting
```dart
void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
```
## Step 2: Generate the auto-generated code

run in the terminal to generate code
```bash
dart run build_runner watch
```

## Documentation

Official website [here](https://riverpod.dev/es/docs/concepts/about_code_generation)