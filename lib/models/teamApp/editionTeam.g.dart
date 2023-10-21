// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editionTeam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditionTeamImpl _$$EditionTeamImplFromJson(Map<String, dynamic> json) =>
    _$EditionTeamImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      edition: json['edition'] == null
          ? null
          : EditionCompetition.fromJson(
              json['edition'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditionTeamImplToJson(_$EditionTeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'edition': instance.edition,
      'team': instance.team,
    };
