// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultMatch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultMatchImpl _$$ResultMatchImplFromJson(Map<String, dynamic> json) =>
    _$ResultMatchImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      match: json['match'] == null
          ? null
          : Match.fromJson(json['match'] as Map<String, dynamic>),
      homeScore: (json['homeScore'] as num?)?.toDouble() ?? 0.0,
      awayScore: (json['awayScore'] as num?)?.toDouble() ?? 0.0,
      result: json['result'] as String? ?? "",
      homeHalfScore: (json['homeHalfScore'] as num?)?.toDouble() ?? 0.0,
      awayHalfScore: (json['awayHalfScore'] as num?)?.toDouble() ?? 0.0,
      resultHalf: json['resultHalf'] as String? ?? "",
    );

Map<String, dynamic> _$$ResultMatchImplToJson(_$ResultMatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'match': instance.match,
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
      'result': instance.result,
      'homeHalfScore': instance.homeHalfScore,
      'awayHalfScore': instance.awayHalfScore,
      'resultHalf': instance.resultHalf,
    };
