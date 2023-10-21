// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pays.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaysImpl _$$PaysImplFromJson(Map<String, dynamic> json) => _$PaysImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      name: json['name'] as String,
      code: json['code'] as String? ?? "",
      abr: json['abr'] as String? ?? "",
      flag: json['flag'] as String? ?? "",
    );

Map<String, dynamic> _$$PaysImplToJson(_$PaysImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'name': instance.name,
      'code': instance.code,
      'abr': instance.abr,
      'flag': instance.flag,
    };
