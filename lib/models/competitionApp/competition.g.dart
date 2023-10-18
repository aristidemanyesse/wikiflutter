// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompetitionImpl _$$CompetitionImplFromJson(Map<String, dynamic> json) =>
    _$CompetitionImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      identifiant: json['identifiant'] as String? ?? "",
      name: json['name'] as String? ?? "",
      code: json['code'] as String? ?? "",
      logo: json['logo'] as String? ?? "",
      pays: json['pays'] == null
          ? null
          : Pays.fromJson(json['pays'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : TypeCompetition.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompetitionImplToJson(_$CompetitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deleted': instance.deleted,
      'identifiant': instance.identifiant,
      'name': instance.name,
      'code': instance.code,
      'logo': instance.logo,
      'pays': instance.pays,
      'type': instance.type,
    };
