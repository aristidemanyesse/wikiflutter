// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modePrediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModePredictionImpl _$$ModePredictionImplFromJson(Map<String, dynamic> json) =>
    _$ModePredictionImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$ModePredictionImplToJson(
        _$ModePredictionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'name': instance.name,
    };
