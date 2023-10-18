// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fact _$FactFromJson(Map<String, dynamic> json) {
  return _Fact.fromJson(json);
}

/// @nodoc
mixin _$Fact {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  TypeFact? get type => throw _privateConstructorUsedError;
  Match? get match => throw _privateConstructorUsedError;
  EditionTeam? get team => throw _privateConstructorUsedError;
  String get fullTime => throw _privateConstructorUsedError;
  String get allMatches => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  double get pct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FactCopyWith<Fact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactCopyWith<$Res> {
  factory $FactCopyWith(Fact value, $Res Function(Fact) then) =
      _$FactCopyWithImpl<$Res, Fact>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      bool deleted,
      TypeFact? type,
      Match? match,
      EditionTeam? team,
      String fullTime,
      String allMatches,
      String total,
      bool success,
      double pct});

  $TypeFactCopyWith<$Res>? get type;
  $MatchCopyWith<$Res>? get match;
  $EditionTeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$FactCopyWithImpl<$Res, $Val extends Fact>
    implements $FactCopyWith<$Res> {
  _$FactCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? match = freezed,
    Object? team = freezed,
    Object? fullTime = null,
    Object? allMatches = null,
    Object? total = null,
    Object? success = null,
    Object? pct = null,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeFact?,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as EditionTeam?,
      fullTime: null == fullTime
          ? _value.fullTime
          : fullTime // ignore: cast_nullable_to_non_nullable
              as String,
      allMatches: null == allMatches
          ? _value.allMatches
          : allMatches // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      pct: null == pct
          ? _value.pct
          : pct // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeFactCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypeFactCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchCopyWith<$Res>? get match {
    if (_value.match == null) {
      return null;
    }

    return $MatchCopyWith<$Res>(_value.match!, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EditionTeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $EditionTeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FactImplCopyWith<$Res> implements $FactCopyWith<$Res> {
  factory _$$FactImplCopyWith(
          _$FactImpl value, $Res Function(_$FactImpl) then) =
      __$$FactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      bool deleted,
      TypeFact? type,
      Match? match,
      EditionTeam? team,
      String fullTime,
      String allMatches,
      String total,
      bool success,
      double pct});

  @override
  $TypeFactCopyWith<$Res>? get type;
  @override
  $MatchCopyWith<$Res>? get match;
  @override
  $EditionTeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$FactImplCopyWithImpl<$Res>
    extends _$FactCopyWithImpl<$Res, _$FactImpl>
    implements _$$FactImplCopyWith<$Res> {
  __$$FactImplCopyWithImpl(_$FactImpl _value, $Res Function(_$FactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deleted = null,
    Object? type = freezed,
    Object? match = freezed,
    Object? team = freezed,
    Object? fullTime = null,
    Object? allMatches = null,
    Object? total = null,
    Object? success = null,
    Object? pct = null,
  }) {
    return _then(_$FactImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeFact?,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as EditionTeam?,
      fullTime: null == fullTime
          ? _value.fullTime
          : fullTime // ignore: cast_nullable_to_non_nullable
              as String,
      allMatches: null == allMatches
          ? _value.allMatches
          : allMatches // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      pct: null == pct
          ? _value.pct
          : pct // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactImpl with DiagnosticableTreeMixin implements _Fact {
  const _$FactImpl(
      {this.id = "",
      this.createdAt = "",
      this.updatedAt = "",
      this.deleted = false,
      this.type,
      this.match,
      this.team,
      this.fullTime = "",
      this.allMatches = "",
      this.total = "",
      this.success = false,
      this.pct = 0.0});

  factory _$FactImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactImplFromJson(json);

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
  final TypeFact? type;
  @override
  final Match? match;
  @override
  final EditionTeam? team;
  @override
  @JsonKey()
  final String fullTime;
  @override
  @JsonKey()
  final String allMatches;
  @override
  @JsonKey()
  final String total;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final double pct;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Fact(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deleted: $deleted, type: $type, match: $match, team: $team, fullTime: $fullTime, allMatches: $allMatches, total: $total, success: $success, pct: $pct)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Fact'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('match', match))
      ..add(DiagnosticsProperty('team', team))
      ..add(DiagnosticsProperty('fullTime', fullTime))
      ..add(DiagnosticsProperty('allMatches', allMatches))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('pct', pct));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.fullTime, fullTime) ||
                other.fullTime == fullTime) &&
            (identical(other.allMatches, allMatches) ||
                other.allMatches == allMatches) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.pct, pct) || other.pct == pct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt,
      deleted, type, match, team, fullTime, allMatches, total, success, pct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FactImplCopyWith<_$FactImpl> get copyWith =>
      __$$FactImplCopyWithImpl<_$FactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactImplToJson(
      this,
    );
  }
}

abstract class _Fact implements Fact {
  const factory _Fact(
      {final String id,
      final String createdAt,
      final String updatedAt,
      final bool deleted,
      final TypeFact? type,
      final Match? match,
      final EditionTeam? team,
      final String fullTime,
      final String allMatches,
      final String total,
      final bool success,
      final double pct}) = _$FactImpl;

  factory _Fact.fromJson(Map<String, dynamic> json) = _$FactImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  bool get deleted;
  @override
  TypeFact? get type;
  @override
  Match? get match;
  @override
  EditionTeam? get team;
  @override
  String get fullTime;
  @override
  String get allMatches;
  @override
  String get total;
  @override
  bool get success;
  @override
  double get pct;
  @override
  @JsonKey(ignore: true)
  _$$FactImplCopyWith<_$FactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
