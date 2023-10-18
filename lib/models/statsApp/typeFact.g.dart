// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typeFact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TypeFactImpl _$$TypeFactImplFromJson(Map<String, dynamic> json) =>
    _$TypeFactImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$TypeFactImplToJson(_$TypeFactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deleted': instance.deleted,
      'name': instance.name,
      'description': instance.description,
    };
