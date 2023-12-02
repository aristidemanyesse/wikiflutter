// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extraInfosMatch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtraInfosMatchImpl _$$ExtraInfosMatchImplFromJson(
        Map<String, dynamic> json) =>
    _$ExtraInfosMatchImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      match: json['match'] == null
          ? null
          : Match.fromJson(json['match'] as Map<String, dynamic>),
      homeShots: json['homeShots'] as int? ?? 0,
      awayShots: json['awayShots'] as int? ?? 0,
      homeShotsOnTarget: json['homeShotsOnTarget'] as int? ?? 0,
      awayShotsOnTarget: json['awayShotsOnTarget'] as int? ?? 0,
      homeCorners: json['homeCorners'] as int? ?? 0,
      awayCorners: json['awayCorners'] as int? ?? 0,
      homeFouls: json['homeFouls'] as int? ?? 0,
      awayFouls: json['awayFouls'] as int? ?? 0,
      homeOffsides: json['homeOffsides'] as int? ?? 0,
      awayOffsides: json['awayOffsides'] as int? ?? 0,
      homeYellowCards: json['homeYellowCards'] as int? ?? 0,
      awayYellowCards: json['awayYellowCards'] as int? ?? 0,
      homeRedCards: json['homeRedCards'] as int? ?? 0,
      awayRedCards: json['awayRedCards'] as int? ?? 0,
    );

Map<String, dynamic> _$$ExtraInfosMatchImplToJson(
        _$ExtraInfosMatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'match': instance.match,
      'homeShots': instance.homeShots,
      'awayShots': instance.awayShots,
      'homeShotsOnTarget': instance.homeShotsOnTarget,
      'awayShotsOnTarget': instance.awayShotsOnTarget,
      'homeCorners': instance.homeCorners,
      'awayCorners': instance.awayCorners,
      'homeFouls': instance.homeFouls,
      'awayFouls': instance.awayFouls,
      'homeOffsides': instance.homeOffsides,
      'awayOffsides': instance.awayOffsides,
      'homeYellowCards': instance.homeYellowCards,
      'awayYellowCards': instance.awayYellowCards,
      'homeRedCards': instance.homeRedCards,
      'awayRedCards': instance.awayRedCards,
    };
