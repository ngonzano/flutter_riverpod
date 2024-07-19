# Riverpod: code generation, freezed y json_serializable 

This repository demonstrates how to integrate and use Riverpod with code generation, Freezed, and json_serializable in a Flutter project. These tools facilitate state management, the generation of immutable classes, and JSON serialization/deserialization, respectively.

## Step 1: Add Dependencies in the terminal
```bash
dart pub add riverpod
dart pub add flutter_riverpod
dart pub add riverpod_annotation

dart pub add dev:riverpod_generator
dart pub add dev:build_runner
dart pub add dev:custom_lint
dart pub add dev:riverpod_lint

dart pub add freezed_annotation
dart pub add json_annotation

dart pub add freezed
dart pub add dev:json_serializable

flutter pub add fluttertoast
```
## Step 2: Generate the auto-generated code

run in the terminal to generate code
```bash
dart run build_runner watch
```

