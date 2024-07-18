import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

///
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
    double? weight,
    double? height,
    Map? sprites,
  }) = _Activity;

  /// Converts a JSON object to an [Activity] instance
  /// This allows type-safe reading of the API response.
  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
