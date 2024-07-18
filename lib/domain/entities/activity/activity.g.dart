// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      id: (json['id'] as num?)?.toInt(),
      key: json['key'] as String?,
      activity: json['activity'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String,
      participants: (json['participants'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      sprites: json['sprites'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'activity': instance.activity,
      'type': instance.type,
      'name': instance.name,
      'participants': instance.participants,
      'price': instance.price,
      'weight': instance.weight,
      'height': instance.height,
      'sprites': instance.sprites,
    };
