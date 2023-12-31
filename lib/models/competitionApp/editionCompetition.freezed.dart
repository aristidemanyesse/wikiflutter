// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editionCompetition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditionCompetition _$EditionCompetitionFromJson(Map<String, dynamic> json) {
  return _EditionCompetition.fromJson(json);
}

/// @nodoc
mixin _$EditionCompetition {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get finishDate => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  Edition? get edition => throw _privateConstructorUsedError;
  Competition? get competition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditionCompetitionCopyWith<EditionCompetition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditionCompetitionCopyWith<$Res> {
  factory $EditionCompetitionCopyWith(
          EditionCompetition value, $Res Function(EditionCompetition) then) =
      _$EditionCompetitionCopyWithImpl<$Res, EditionCompetition>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String startDate,
      String finishDate,
      bool isFinished,
      Edition? edition,
      Competition? competition});

  $EditionCopyWith<$Res>? get edition;
  $CompetitionCopyWith<$Res>? get competition;
}

/// @nodoc
class _$EditionCompetitionCopyWithImpl<$Res, $Val extends EditionCompetition>
    implements $EditionCompetitionCopyWith<$Res> {
  _$EditionCompetitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? startDate = null,
    Object? finishDate = null,
    Object? isFinished = null,
    Object? edition = freezed,
    Object? competition = freezed,
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
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      finishDate: null == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition?,
      competition: freezed == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as Competition?,
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
  $CompetitionCopyWith<$Res>? get competition {
    if (_value.competition == null) {
      return null;
    }

    return $CompetitionCopyWith<$Res>(_value.competition!, (value) {
      return _then(_value.copyWith(competition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditionCompetitionImplCopyWith<$Res>
    implements $EditionCompetitionCopyWith<$Res> {
  factory _$$EditionCompetitionImplCopyWith(_$EditionCompetitionImpl value,
          $Res Function(_$EditionCompetitionImpl) then) =
      __$$EditionCompetitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String startDate,
      String finishDate,
      bool isFinished,
      Edition? edition,
      Competition? competition});

  @override
  $EditionCopyWith<$Res>? get edition;
  @override
  $CompetitionCopyWith<$Res>? get competition;
}

/// @nodoc
class __$$EditionCompetitionImplCopyWithImpl<$Res>
    extends _$EditionCompetitionCopyWithImpl<$Res, _$EditionCompetitionImpl>
    implements _$$EditionCompetitionImplCopyWith<$Res> {
  __$$EditionCompetitionImplCopyWithImpl(_$EditionCompetitionImpl _value,
      $Res Function(_$EditionCompetitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? startDate = null,
    Object? finishDate = null,
    Object? isFinished = null,
    Object? edition = freezed,
    Object? competition = freezed,
  }) {
    return _then(_$EditionCompetitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      finishDate: null == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition?,
      competition: freezed == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as Competition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditionCompetitionImpl
    with DiagnosticableTreeMixin
    implements _EditionCompetition {
  const _$EditionCompetitionImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.startDate = "",
      this.finishDate = "",
      this.isFinished = false,
      this.edition,
      this.competition});

  factory _$EditionCompetitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditionCompetitionImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updateAt;
  @override
  @JsonKey()
  final bool deleted;
  @override
  @JsonKey()
  final String startDate;
  @override
  @JsonKey()
  final String finishDate;
  @override
  @JsonKey()
  final bool isFinished;
  @override
  final Edition? edition;
  @override
  final Competition? competition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditionCompetition(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, startDate: $startDate, finishDate: $finishDate, isFinished: $isFinished, edition: $edition, competition: $competition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditionCompetition'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updateAt', updateAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('finishDate', finishDate))
      ..add(DiagnosticsProperty('isFinished', isFinished))
      ..add(DiagnosticsProperty('edition', edition))
      ..add(DiagnosticsProperty('competition', competition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditionCompetitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.finishDate, finishDate) ||
                other.finishDate == finishDate) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.edition, edition) || other.edition == edition) &&
            (identical(other.competition, competition) ||
                other.competition == competition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updateAt, deleted,
      startDate, finishDate, isFinished, edition, competition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditionCompetitionImplCopyWith<_$EditionCompetitionImpl> get copyWith =>
      __$$EditionCompetitionImplCopyWithImpl<_$EditionCompetitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditionCompetitionImplToJson(
      this,
    );
  }
}

abstract class _EditionCompetition implements EditionCompetition {
  const factory _EditionCompetition(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final String startDate,
      final String finishDate,
      final bool isFinished,
      final Edition? edition,
      final Competition? competition}) = _$EditionCompetitionImpl;

  factory _EditionCompetition.fromJson(Map<String, dynamic> json) =
      _$EditionCompetitionImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updateAt;
  @override
  bool get deleted;
  @override
  String get startDate;
  @override
  String get finishDate;
  @override
  bool get isFinished;
  @override
  Edition? get edition;
  @override
  Competition? get competition;
  @override
  @JsonKey(ignore: true)
  _$$EditionCompetitionImplCopyWith<_$EditionCompetitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
