// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      name: json['name'] as String? ?? "",
      code: json['code'] as String? ?? "",
      name2: json['name2'] as String? ?? "",
      abr: json['abr'] as String? ?? "",
      pays: json['pays'] == null
          ? null
          : Pays.fromJson(json['pays'] as Map<String, dynamic>),
      color1: json['color1'] as String? ?? "",
      color2: json['color2'] as String? ?? "",
      logo: json['logo'] as String? ?? "",
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'name': instance.name,
      'code': instance.code,
      'name2': instance.name2,
      'abr': instance.abr,
      'pays': instance.pays,
      'color1': instance.color1,
      'color2': instance.color2,
      'logo': instance.logo,
    };
