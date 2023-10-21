// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typeCompetition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TypeCompetitionImpl _$$TypeCompetitionImplFromJson(
        Map<String, dynamic> json) =>
    _$TypeCompetitionImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      name: json['name'] as String? ?? "",
      etiquette: json['etiquette'] as String? ?? "",
    );

Map<String, dynamic> _$$TypeCompetitionImplToJson(
        _$TypeCompetitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'name': instance.name,
      'etiquette': instance.etiquette,
    };
