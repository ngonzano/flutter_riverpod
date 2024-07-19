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
## Step 3: add model
This setup provides a robust, type-safe way to handle data models, especially when dealing with APIs and complex state management scenarios.

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';
```
1-  Imports:
	•	freezed_annotation/freezed_annotation.dart is imported to use the @freezed annotation and other related utilities.
2-  Part Directives:
	•	part 'activity.freezed.dart'; and part 'activity.g.dart'; tell the Dart compiler that the generated code for the Activity class will be located in these files. These files are auto-generated by the freezed and json_serializable packages.

#### Freezed Class Definition
```dart
@freezed
class Activity with _$Activity {
  factory Activity({
    int? id,
    String? key,
    String? activity,
    String? type,
    required String name,
    int? participants,
    double? price,
    Map? sprites,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
```
1.	Annotation:
	@freezed: This annotation indicates that the Activity class will use freezed for generating immutable classes,      equality, copy methods, etc.
2.	Class Definition:
    class Activity with _$Activity {}: The Activity class uses a mixin _$Activity, which is part of the generated code that includes utility methods and properties.
3.	Factory Constructor:
    factory Activity({ ... }) = _Activity;: This defines a factory constructor for the Activity class. The constructor accepts various fields (e.g., id, key, activity, type, name, participants, price, sprites). The = _Activity part tells freezed to generate a private implementation class _Activity.
4.	fromJson Factory:
    factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);: This factory constructor allows for the creation of an Activity instance from a JSON object. The function _$ActivityFromJson(json) is generated by json_serializable and provides a type-safe way to deserialize JSON into an Activity object.

#### Generated Code

![Archivos Generados](image_git/model.png)

•	activity.freezed.dart: Contains the generated implementation of the Activity class, including equality, copyWith, and other utility methods.
•	activity.g.dart: Contains the generated fromJson and toJson methods, facilitating the conversion between JSON and the Activity class.

#### How It All Works Together

1.	Defining the Model: Using @freezed, you define an immutable data model with various fields and a constructor.
2.	Generating Code: The build_runner tool generates the necessary code for immutability, serialization, and other utilities in the specified part files.
3.	Serialization: json_serializable generates fromJson and toJson methods, making it easy to convert JSON data to Dart objects and vice versa.
4.	Immutability and Safety: The generated _Activity class ensures that the model is immutable, and freezed provides methods for safely copying and modifying instances.

This setup provides a robust, type-safe way to handle data models, especially when dealing with APIs and complex state management scenarios.

## Step 4: manage and access status

The activity variable is used to manage and access the state of asynchronous data.

```dart
final AsyncValue<Activity> activity = ref.watch(activityProvider(idPokemon: count));
```

The activity.when method is used to handle different states of an AsyncValue in Riverpod. It provides a way to specify what should be displayed or how the application should react depending on whether the asynchronous data is still loading, has been successfully retrieved, or encountered an error.

```dart
activity.when( 
    data: (data) {
        //return widget
        },
    error: (error, stackTrace){
        //return widget
        },
    loading: () => const CircularProgressIndicator(),
)
```

#### Breakdown of the when Method

1.	**data**:
        • **Purpose**: This callback is called when the AsyncValue contains the successfully fetched data.
        • Parameter: It receives the data (an Activity object in this case) as an argument.
        • Usage: You can use this to build widgets that display the data to the user, such as showing the activity name.
2.	loading:
        • Purpose: This callback is called while the asynchronous operation is still in progress.
        • Parameter: It does not receive any arguments.
        • Usage: You can use this to show a loading indicator or some placeholder content to inform the user that data is being fetched.
3.	error:
        • Purpose: This callback is called if there is an error during the asynchronous operation.
        • Parameters: It receives the error and optionally a stack trace.
        • Usage: You can use this to display an error message or handle the error gracefully.

## Documentation

Official website [here](https://riverpod.dev/es/docs/concepts/about_code_generation)