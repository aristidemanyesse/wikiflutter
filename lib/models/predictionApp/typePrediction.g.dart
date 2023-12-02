// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typePrediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TypePredictionImpl _$$TypePredictionImplFromJson(Map<String, dynamic> json) =>
    _$TypePredictionImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$TypePredictionImplToJson(
        _$TypePredictionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'name': instance.name,
    };
