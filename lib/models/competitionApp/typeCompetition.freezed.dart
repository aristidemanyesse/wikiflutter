// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typeCompetition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypeCompetition _$TypeCompetitionFromJson(Map<String, dynamic> json) {
  return _TypeCompetition.fromJson(json);
}

/// @nodoc
mixin _$TypeCompetition {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get etiquette => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeCompetitionCopyWith<TypeCompetition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCompetitionCopyWith<$Res> {
  factory $TypeCompetitionCopyWith(
          TypeCompetition value, $Res Function(TypeCompetition) then) =
      _$TypeCompetitionCopyWithImpl<$Res, TypeCompetition>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      bool deleted,
      String name,
      String etiquette});
}

/// @nodoc
class _$TypeCompetitionCopyWithImpl<$Res, $Val extends TypeCompetition>
    implements $TypeCompetitionCopyWith<$Res> {
  _$TypeCompetitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deleted = null,
    Object? name = null,
    Object? etiquette = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      etiquette: null == etiquette
          ? _value.etiquette
          : etiquette // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeCompetitionImplCopyWith<$Res>
    implements $TypeCompetitionCopyWith<$Res> {
  factory _$$TypeCompetitionImplCopyWith(_$TypeCompetitionImpl value,
          $Res Function(_$TypeCompetitionImpl) then) =
      __$$TypeCompetitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      bool deleted,
      String name,
      String etiquette});
}

/// @nodoc
class __$$TypeCompetitionImplCopyWithImpl<$Res>
    extends _$TypeCompetitionCopyWithImpl<$Res, _$TypeCompetitionImpl>
    implements _$$TypeCompetitionImplCopyWith<$Res> {
  __$$TypeCompetitionImplCopyWithImpl(
      _$TypeCompetitionImpl _value, $Res Function(_$TypeCompetitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deleted = null,
    Object? name = null,
    Object? etiquette = null,
  }) {
    return _then(_$TypeCompetitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      etiquette: null == etiquette
          ? _value.etiquette
          : etiquette // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeCompetitionImpl
    with DiagnosticableTreeMixin
    implements _TypeCompetition {
  const _$TypeCompetitionImpl(
      {this.id = "",
      this.createdAt = "",
      this.updatedAt = "",
      this.deleted = false,
      this.name = "",
      this.etiquette = ""});

  factory _$TypeCompetitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeCompetitionImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final bool deleted;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String etiquette;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TypeCompetition(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deleted: $deleted, name: $name, etiquette: $etiquette)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TypeCompetition'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('etiquette', etiquette));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeCompetitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.etiquette, etiquette) ||
                other.etiquette == etiquette));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, updatedAt, deleted, name, etiquette);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeCompetitionImplCopyWith<_$TypeCompetitionImpl> get copyWith =>
      __$$TypeCompetitionImplCopyWithImpl<_$TypeCompetitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeCompetitionImplToJson(
      this,
    );
  }
}

abstract class _TypeCompetition implements TypeCompetition {
  const factory _TypeCompetition(
      {final String id,
      final String createdAt,
      final String updatedAt,
      final bool deleted,
      final String name,
      final String etiquette}) = _$TypeCompetitionImpl;

  factory _TypeCompetition.fromJson(Map<String, dynamic> json) =
      _$TypeCompetitionImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  bool get deleted;
  @override
  String get name;
  @override
  String get etiquette;
  @override
  @JsonKey(ignore: true)
  _$$TypeCompetitionImplCopyWith<_$TypeCompetitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
