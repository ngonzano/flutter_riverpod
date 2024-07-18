# Riverpod Generator, freezed y json_serializable 

Este repositorio muestra cómo integrar y utilizar Riverpod Generator, Freezed y json_serializable en un proyecto Flutter. Estas herramientas facilitan la gestión del estado, la generación de clases inmutables y la serialización/deserialización de JSON, respectivamente.

## Paso 1: Añadir Dependencias

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

## Paso 2: Generar el Código

ejecutar en la terminal:
dart run build_runner watch

## Paso 3: Crear el Proveedor con Código Autogenerado

revisar archivo counter_provider.dart

## Paso 4: Crear la Interfaz de Usuario


