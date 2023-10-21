// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editionCompetition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditionCompetitionImpl _$$EditionCompetitionImplFromJson(
        Map<String, dynamic> json) =>
    _$EditionCompetitionImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      startDate: json['startDate'] as String? ?? "",
      finishDate: json['finishDate'] as String? ?? "",
      isFinished: json['isFinished'] as bool? ?? false,
      editon: json['editon'] == null
          ? null
          : Edition.fromJson(json['editon'] as Map<String, dynamic>),
      competition: json['competition'] == null
          ? null
          : Competition.fromJson(json['competition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditionCompetitionImplToJson(
        _$EditionCompetitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'startDate': instance.startDate,
      'finishDate': instance.finishDate,
      'isFinished': instance.isFinished,
      'editon': instance.editon,
      'competition': instance.competition,
    };
