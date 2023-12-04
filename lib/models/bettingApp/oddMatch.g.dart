// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oddMatch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OddsMatchImpl _$$OddsMatchImplFromJson(Map<String, dynamic> json) =>
    _$OddsMatchImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      home: (json['home'] as num?)?.toDouble() ?? 0.0,
      draw: (json['draw'] as num?)?.toDouble() ?? 0.0,
      away: (json['away'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$OddsMatchImplToJson(_$OddsMatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'home': instance.home,
      'draw': instance.draw,
      'away': instance.away,
    };
