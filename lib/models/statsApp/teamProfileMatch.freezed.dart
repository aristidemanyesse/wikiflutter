// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teamProfileMatch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamProfileMatch _$TeamProfileMatchFromJson(Map<String, dynamic> json) {
  return _TeamProfileMatch.fromJson(json);
}

/// @nodoc
mixin _$TeamProfileMatch {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  EditionTeam? get team => throw _privateConstructorUsedError;
  Match? get match => throw _privateConstructorUsedError;
  double get dynamique => throw _privateConstructorUsedError;
  double get maitrise => throw _privateConstructorUsedError;
  double get attack => throw _privateConstructorUsedError;
  double get defense => throw _privateConstructorUsedError;
  double get domination => throw _privateConstructorUsedError;
  double get ranking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamProfileMatchCopyWith<TeamProfileMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamProfileMatchCopyWith<$Res> {
  factory $TeamProfileMatchCopyWith(
          TeamProfileMatch value, $Res Function(TeamProfileMatch) then) =
      _$TeamProfileMatchCopyWithImpl<$Res, TeamProfileMatch>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      EditionTeam? team,
      Match? match,
      double dynamique,
      double maitrise,
      double attack,
      double defense,
      double domination,
      double ranking});

  $EditionTeamCopyWith<$Res>? get team;
  $MatchCopyWith<$Res>? get match;
}

/// @nodoc
class _$TeamProfileMatchCopyWithImpl<$Res, $Val extends TeamProfileMatch>
    implements $TeamProfileMatchCopyWith<$Res> {
  _$TeamProfileMatchCopyWithImpl(this._value, this._then);

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
    Object? team = freezed,
    Object? match = freezed,
    Object? dynamique = null,
    Object? maitrise = null,
    Object? attack = null,
    Object? defense = null,
    Object? domination = null,
    Object? ranking = null,
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
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as EditionTeam?,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match?,
      dynamique: null == dynamique
          ? _value.dynamique
          : dynamique // ignore: cast_nullable_to_non_nullable
              as double,
      maitrise: null == maitrise
          ? _value.maitrise
          : maitrise // ignore: cast_nullable_to_non_nullable
              as double,
      attack: null == attack
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as double,
      defense: null == defense
          ? _value.defense
          : defense // ignore: cast_nullable_to_non_nullable
              as double,
      domination: null == domination
          ? _value.domination
          : domination // ignore: cast_nullable_to_non_nullable
              as double,
      ranking: null == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$TeamProfileMatchImplCopyWith<$Res>
    implements $TeamProfileMatchCopyWith<$Res> {
  factory _$$TeamProfileMatchImplCopyWith(_$TeamProfileMatchImpl value,
          $Res Function(_$TeamProfileMatchImpl) then) =
      __$$TeamProfileMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      EditionTeam? team,
      Match? match,
      double dynamique,
      double maitrise,
      double attack,
      double defense,
      double domination,
      double ranking});

  @override
  $EditionTeamCopyWith<$Res>? get team;
  @override
  $MatchCopyWith<$Res>? get match;
}

/// @nodoc
class __$$TeamProfileMatchImplCopyWithImpl<$Res>
    extends _$TeamProfileMatchCopyWithImpl<$Res, _$TeamProfileMatchImpl>
    implements _$$TeamProfileMatchImplCopyWith<$Res> {
  __$$TeamProfileMatchImplCopyWithImpl(_$TeamProfileMatchImpl _value,
      $Res Function(_$TeamProfileMatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? team = freezed,
    Object? match = freezed,
    Object? dynamique = null,
    Object? maitrise = null,
    Object? attack = null,
    Object? defense = null,
    Object? domination = null,
    Object? ranking = null,
  }) {
    return _then(_$TeamProfileMatchImpl(
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
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as EditionTeam?,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match?,
      dynamique: null == dynamique
          ? _value.dynamique
          : dynamique // ignore: cast_nullable_to_non_nullable
              as double,
      maitrise: null == maitrise
          ? _value.maitrise
          : maitrise // ignore: cast_nullable_to_non_nullable
              as double,
      attack: null == attack
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as double,
      defense: null == defense
          ? _value.defense
          : defense // ignore: cast_nullable_to_non_nullable
              as double,
      domination: null == domination
          ? _value.domination
          : domination // ignore: cast_nullable_to_non_nullable
              as double,
      ranking: null == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamProfileMatchImpl implements _TeamProfileMatch {
  const _$TeamProfileMatchImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.team,
      this.match,
      this.dynamique = 0.0,
      this.maitrise = 0.0,
      this.attack = 0.0,
      this.defense = 0.0,
      this.domination = 0.0,
      this.ranking = 0.0});

  factory _$TeamProfileMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamProfileMatchImplFromJson(json);

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
  final EditionTeam? team;
  @override
  final Match? match;
  @override
  @JsonKey()
  final double dynamique;
  @override
  @JsonKey()
  final double maitrise;
  @override
  @JsonKey()
  final double attack;
  @override
  @JsonKey()
  final double defense;
  @override
  @JsonKey()
  final double domination;
  @override
  @JsonKey()
  final double ranking;

  @override
  String toString() {
    return 'TeamProfileMatch(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, team: $team, match: $match, dynamique: $dynamique, maitrise: $maitrise, attack: $attack, defense: $defense, domination: $domination, ranking: $ranking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamProfileMatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.dynamique, dynamique) ||
                other.dynamique == dynamique) &&
            (identical(other.maitrise, maitrise) ||
                other.maitrise == maitrise) &&
            (identical(other.attack, attack) || other.attack == attack) &&
            (identical(other.defense, defense) || other.defense == defense) &&
            (identical(other.domination, domination) ||
                other.domination == domination) &&
            (identical(other.ranking, ranking) || other.ranking == ranking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updateAt, deleted,
      team, match, dynamique, maitrise, attack, defense, domination, ranking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamProfileMatchImplCopyWith<_$TeamProfileMatchImpl> get copyWith =>
      __$$TeamProfileMatchImplCopyWithImpl<_$TeamProfileMatchImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamProfileMatchImplToJson(
      this,
    );
  }
}

abstract class _TeamProfileMatch implements TeamProfileMatch {
  const factory _TeamProfileMatch(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final EditionTeam? team,
      final Match? match,
      final double dynamique,
      final double maitrise,
      final double attack,
      final double defense,
      final double domination,
      final double ranking}) = _$TeamProfileMatchImpl;

  factory _TeamProfileMatch.fromJson(Map<String, dynamic> json) =
      _$TeamProfileMatchImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updateAt;
  @override
  bool get deleted;
  @override
  EditionTeam? get team;
  @override
  Match? get match;
  @override
  double get dynamique;
  @override
  double get maitrise;
  @override
  double get attack;
  @override
  double get defense;
  @override
  double get domination;
  @override
  double get ranking;
  @override
  @JsonKey(ignore: true)
  _$$TeamProfileMatchImplCopyWith<_$TeamProfileMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
