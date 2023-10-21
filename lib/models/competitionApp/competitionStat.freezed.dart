// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'competitionStat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompetitionStat _$CompetitionStatFromJson(Map<String, dynamic> json) {
  return _CompetitionStat.fromJson(json);
}

/// @nodoc
mixin _$CompetitionStat {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  Ranking? get ranking => throw _privateConstructorUsedError;
  Edition? get edition => throw _privateConstructorUsedError;
  double get avgGoals => throw _privateConstructorUsedError;
  double get avgFouls => throw _privateConstructorUsedError;
  double get avgCorners => throw _privateConstructorUsedError;
  double get avgShots => throw _privateConstructorUsedError;
  double get avgShotsTarget => throw _privateConstructorUsedError;
  double get avgOffside => throw _privateConstructorUsedError;
  double get avgYellowCards => throw _privateConstructorUsedError;
  double get avgRedCards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompetitionStatCopyWith<CompetitionStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetitionStatCopyWith<$Res> {
  factory $CompetitionStatCopyWith(
          CompetitionStat value, $Res Function(CompetitionStat) then) =
      _$CompetitionStatCopyWithImpl<$Res, CompetitionStat>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      Ranking? ranking,
      Edition? edition,
      double avgGoals,
      double avgFouls,
      double avgCorners,
      double avgShots,
      double avgShotsTarget,
      double avgOffside,
      double avgYellowCards,
      double avgRedCards});

  $RankingCopyWith<$Res>? get ranking;
  $EditionCopyWith<$Res>? get edition;
}

/// @nodoc
class _$CompetitionStatCopyWithImpl<$Res, $Val extends CompetitionStat>
    implements $CompetitionStatCopyWith<$Res> {
  _$CompetitionStatCopyWithImpl(this._value, this._then);

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
    Object? ranking = freezed,
    Object? edition = freezed,
    Object? avgGoals = null,
    Object? avgFouls = null,
    Object? avgCorners = null,
    Object? avgShots = null,
    Object? avgShotsTarget = null,
    Object? avgOffside = null,
    Object? avgYellowCards = null,
    Object? avgRedCards = null,
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
      ranking: freezed == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as Ranking?,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition?,
      avgGoals: null == avgGoals
          ? _value.avgGoals
          : avgGoals // ignore: cast_nullable_to_non_nullable
              as double,
      avgFouls: null == avgFouls
          ? _value.avgFouls
          : avgFouls // ignore: cast_nullable_to_non_nullable
              as double,
      avgCorners: null == avgCorners
          ? _value.avgCorners
          : avgCorners // ignore: cast_nullable_to_non_nullable
              as double,
      avgShots: null == avgShots
          ? _value.avgShots
          : avgShots // ignore: cast_nullable_to_non_nullable
              as double,
      avgShotsTarget: null == avgShotsTarget
          ? _value.avgShotsTarget
          : avgShotsTarget // ignore: cast_nullable_to_non_nullable
              as double,
      avgOffside: null == avgOffside
          ? _value.avgOffside
          : avgOffside // ignore: cast_nullable_to_non_nullable
              as double,
      avgYellowCards: null == avgYellowCards
          ? _value.avgYellowCards
          : avgYellowCards // ignore: cast_nullable_to_non_nullable
              as double,
      avgRedCards: null == avgRedCards
          ? _value.avgRedCards
          : avgRedCards // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RankingCopyWith<$Res>? get ranking {
    if (_value.ranking == null) {
      return null;
    }

    return $RankingCopyWith<$Res>(_value.ranking!, (value) {
      return _then(_value.copyWith(ranking: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$CompetitionStatImplCopyWith<$Res>
    implements $CompetitionStatCopyWith<$Res> {
  factory _$$CompetitionStatImplCopyWith(_$CompetitionStatImpl value,
          $Res Function(_$CompetitionStatImpl) then) =
      __$$CompetitionStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      Ranking? ranking,
      Edition? edition,
      double avgGoals,
      double avgFouls,
      double avgCorners,
      double avgShots,
      double avgShotsTarget,
      double avgOffside,
      double avgYellowCards,
      double avgRedCards});

  @override
  $RankingCopyWith<$Res>? get ranking;
  @override
  $EditionCopyWith<$Res>? get edition;
}

/// @nodoc
class __$$CompetitionStatImplCopyWithImpl<$Res>
    extends _$CompetitionStatCopyWithImpl<$Res, _$CompetitionStatImpl>
    implements _$$CompetitionStatImplCopyWith<$Res> {
  __$$CompetitionStatImplCopyWithImpl(
      _$CompetitionStatImpl _value, $Res Function(_$CompetitionStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? ranking = freezed,
    Object? edition = freezed,
    Object? avgGoals = null,
    Object? avgFouls = null,
    Object? avgCorners = null,
    Object? avgShots = null,
    Object? avgShotsTarget = null,
    Object? avgOffside = null,
    Object? avgYellowCards = null,
    Object? avgRedCards = null,
  }) {
    return _then(_$CompetitionStatImpl(
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
      ranking: freezed == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as Ranking?,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition?,
      avgGoals: null == avgGoals
          ? _value.avgGoals
          : avgGoals // ignore: cast_nullable_to_non_nullable
              as double,
      avgFouls: null == avgFouls
          ? _value.avgFouls
          : avgFouls // ignore: cast_nullable_to_non_nullable
              as double,
      avgCorners: null == avgCorners
          ? _value.avgCorners
          : avgCorners // ignore: cast_nullable_to_non_nullable
              as double,
      avgShots: null == avgShots
          ? _value.avgShots
          : avgShots // ignore: cast_nullable_to_non_nullable
              as double,
      avgShotsTarget: null == avgShotsTarget
          ? _value.avgShotsTarget
          : avgShotsTarget // ignore: cast_nullable_to_non_nullable
              as double,
      avgOffside: null == avgOffside
          ? _value.avgOffside
          : avgOffside // ignore: cast_nullable_to_non_nullable
              as double,
      avgYellowCards: null == avgYellowCards
          ? _value.avgYellowCards
          : avgYellowCards // ignore: cast_nullable_to_non_nullable
              as double,
      avgRedCards: null == avgRedCards
          ? _value.avgRedCards
          : avgRedCards // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompetitionStatImpl
    with DiagnosticableTreeMixin
    implements _CompetitionStat {
  const _$CompetitionStatImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.ranking,
      this.edition,
      this.avgGoals = 0.0,
      this.avgFouls = 0.0,
      this.avgCorners = 0.0,
      this.avgShots = 0.0,
      this.avgShotsTarget = 0.0,
      this.avgOffside = 0.0,
      this.avgYellowCards = 0.0,
      this.avgRedCards = 0.0});

  factory _$CompetitionStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompetitionStatImplFromJson(json);

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
  final Ranking? ranking;
  @override
  final Edition? edition;
  @override
  @JsonKey()
  final double avgGoals;
  @override
  @JsonKey()
  final double avgFouls;
  @override
  @JsonKey()
  final double avgCorners;
  @override
  @JsonKey()
  final double avgShots;
  @override
  @JsonKey()
  final double avgShotsTarget;
  @override
  @JsonKey()
  final double avgOffside;
  @override
  @JsonKey()
  final double avgYellowCards;
  @override
  @JsonKey()
  final double avgRedCards;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompetitionStat(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, ranking: $ranking, edition: $edition, avgGoals: $avgGoals, avgFouls: $avgFouls, avgCorners: $avgCorners, avgShots: $avgShots, avgShotsTarget: $avgShotsTarget, avgOffside: $avgOffside, avgYellowCards: $avgYellowCards, avgRedCards: $avgRedCards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompetitionStat'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updateAt', updateAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('ranking', ranking))
      ..add(DiagnosticsProperty('edition', edition))
      ..add(DiagnosticsProperty('avgGoals', avgGoals))
      ..add(DiagnosticsProperty('avgFouls', avgFouls))
      ..add(DiagnosticsProperty('avgCorners', avgCorners))
      ..add(DiagnosticsProperty('avgShots', avgShots))
      ..add(DiagnosticsProperty('avgShotsTarget', avgShotsTarget))
      ..add(DiagnosticsProperty('avgOffside', avgOffside))
      ..add(DiagnosticsProperty('avgYellowCards', avgYellowCards))
      ..add(DiagnosticsProperty('avgRedCards', avgRedCards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompetitionStatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.ranking, ranking) || other.ranking == ranking) &&
            (identical(other.edition, edition) || other.edition == edition) &&
            (identical(other.avgGoals, avgGoals) ||
                other.avgGoals == avgGoals) &&
            (identical(other.avgFouls, avgFouls) ||
                other.avgFouls == avgFouls) &&
            (identical(other.avgCorners, avgCorners) ||
                other.avgCorners == avgCorners) &&
            (identical(other.avgShots, avgShots) ||
                other.avgShots == avgShots) &&
            (identical(other.avgShotsTarget, avgShotsTarget) ||
                other.avgShotsTarget == avgShotsTarget) &&
            (identical(other.avgOffside, avgOffside) ||
                other.avgOffside == avgOffside) &&
            (identical(other.avgYellowCards, avgYellowCards) ||
                other.avgYellowCards == avgYellowCards) &&
            (identical(other.avgRedCards, avgRedCards) ||
                other.avgRedCards == avgRedCards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updateAt,
      deleted,
      ranking,
      edition,
      avgGoals,
      avgFouls,
      avgCorners,
      avgShots,
      avgShotsTarget,
      avgOffside,
      avgYellowCards,
      avgRedCards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompetitionStatImplCopyWith<_$CompetitionStatImpl> get copyWith =>
      __$$CompetitionStatImplCopyWithImpl<_$CompetitionStatImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompetitionStatImplToJson(
      this,
    );
  }
}

abstract class _CompetitionStat implements CompetitionStat {
  const factory _CompetitionStat(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final Ranking? ranking,
      final Edition? edition,
      final double avgGoals,
      final double avgFouls,
      final double avgCorners,
      final double avgShots,
      final double avgShotsTarget,
      final double avgOffside,
      final double avgYellowCards,
      final double avgRedCards}) = _$CompetitionStatImpl;

  factory _CompetitionStat.fromJson(Map<String, dynamic> json) =
      _$CompetitionStatImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updateAt;
  @override
  bool get deleted;
  @override
  Ranking? get ranking;
  @override
  Edition? get edition;
  @override
  double get avgGoals;
  @override
  double get avgFouls;
  @override
  double get avgCorners;
  @override
  double get avgShots;
  @override
  double get avgShotsTarget;
  @override
  double get avgOffside;
  @override
  double get avgYellowCards;
  @override
  double get avgRedCards;
  @override
  @JsonKey(ignore: true)
  _$$CompetitionStatImplCopyWith<_$CompetitionStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
