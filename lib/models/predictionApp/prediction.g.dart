// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PredictionImpl _$$PredictionImplFromJson(Map<String, dynamic> json) =>
    _$PredictionImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      mode: json['mode'] == null
          ? null
          : ModePrediction.fromJson(json['mode'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : TypePrediction.fromJson(json['type'] as Map<String, dynamic>),
      match: json['match'] == null
          ? null
          : Match.fromJson(json['match'] as Map<String, dynamic>),
      pct: (json['pct'] as num?)?.toDouble() ?? 0.0,
      isChecked: json['isChecked'] as bool? ?? null,
    );

Map<String, dynamic> _$$PredictionImplToJson(_$PredictionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'mode': instance.mode,
      'type': instance.type,
      'match': instance.match,
      'pct': instance.pct,
      'isChecked': instance.isChecked,
    };
