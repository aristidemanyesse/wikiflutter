// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editionTeam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditionTeam _$EditionTeamFromJson(Map<String, dynamic> json) {
  return _EditionTeam.fromJson(json);
}

/// @nodoc
mixin _$EditionTeam {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  Edition? get edition => throw _privateConstructorUsedError;
  Team? get team => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditionTeamCopyWith<EditionTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditionTeamCopyWith<$Res> {
  factory $EditionTeamCopyWith(
          EditionTeam value, $Res Function(EditionTeam) then) =
      _$EditionTeamCopyWithImpl<$Res, EditionTeam>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      bool deleted,
      Edition? edition,
      Team? team});

  $EditionCopyWith<$Res>? get edition;
  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$EditionTeamCopyWithImpl<$Res, $Val extends EditionTeam>
    implements $EditionTeamCopyWith<$Res> {
  _$EditionTeamCopyWithImpl(this._value, this._then);

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
    Object? edition = freezed,
    Object? team = freezed,
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
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditionCopyWith<$Res>? get edition {
    if (_value.edition == null) {
      return null;
    }

    return $EditionCopyWith<$Res>(_value.edition!, (value) {
      return _then(_value.copyWith(edition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditionTeamImplCopyWith<$Res>
    implements $EditionTeamCopyWith<$Res> {
  factory _$$EditionTeamImplCopyWith(
          _$EditionTeamImpl value, $Res Function(_$EditionTeamImpl) then) =
      __$$EditionTeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      bool deleted,
      Edition? edition,
      Team? team});

  @override
  $EditionCopyWith<$Res>? get edition;
  @override
  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$EditionTeamImplCopyWithImpl<$Res>
    extends _$EditionTeamCopyWithImpl<$Res, _$EditionTeamImpl>
    implements _$$EditionTeamImplCopyWith<$Res> {
  __$$EditionTeamImplCopyWithImpl(
      _$EditionTeamImpl _value, $Res Function(_$EditionTeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deleted = null,
    Object? edition = freezed,
    Object? team = freezed,
  }) {
    return _then(_$EditionTeamImpl(
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
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditionTeamImpl with DiagnosticableTreeMixin implements _EditionTeam {
  const _$EditionTeamImpl(
      {this.id = "",
      this.createdAt = "",
      this.updatedAt = "",
      this.deleted = false,
      this.edition,
      this.team});

  factory _$EditionTeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditionTeamImplFromJson(json);

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
  final Edition? edition;
  @override
  final Team? team;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditionTeam(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deleted: $deleted, edition: $edition, team: $team)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditionTeam'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('edition', edition))
      ..add(DiagnosticsProperty('team', team));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditionTeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.edition, edition) || other.edition == edition) &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, updatedAt, deleted, edition, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditionTeamImplCopyWith<_$EditionTeamImpl> get copyWith =>
      __$$EditionTeamImplCopyWithImpl<_$EditionTeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditionTeamImplToJson(
      this,
    );
  }
}

abstract class _EditionTeam implements EditionTeam {
  const factory _EditionTeam(
      {final String id,
      final String createdAt,
      final String updatedAt,
      final bool deleted,
      final Edition? edition,
      final Team? team}) = _$EditionTeamImpl;

  factory _EditionTeam.fromJson(Map<String, dynamic> json) =
      _$EditionTeamImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  bool get deleted;
  @override
  Edition? get edition;
  @override
  Team? get team;
  @override
  @JsonKey(ignore: true)
  _$$EditionTeamImplCopyWith<_$EditionTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
