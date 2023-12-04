// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  dynamic get date => throw _privateConstructorUsedError;
  dynamic get hour => throw _privateConstructorUsedError;
  EditionTeam? get home => throw _privateConstructorUsedError;
  EditionTeam? get away => throw _privateConstructorUsedError;
  EditionCompetition? get edition => throw _privateConstructorUsedError;
  List<ResultMatch>? get resultMatch => throw _privateConstructorUsedError;
  List<BeforeMatchStat>? get beforeStatMatch =>
      throw _privateConstructorUsedError;
  List<ExtraInfosMatch>? get extraInfoMatch =>
      throw _privateConstructorUsedError;
  List<Prediction>? get predictionMatch => throw _privateConstructorUsedError;
  List<TeamProfileMatch>? get matchProfile =>
      throw _privateConstructorUsedError;
  List<OddsMatch>? get matchOdds => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  bool get isPosted => throw _privateConstructorUsedError;
  bool get isFirstMatch => throw _privateConstructorUsedError;
  bool get isPredict => throw _privateConstructorUsedError;
  bool get isCompared => throw _privateConstructorUsedError;
  bool get isComparedElo => throw _privateConstructorUsedError;
  bool get isFacted => throw _privateConstructorUsedError;
  bool get isStated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res, Match>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String name,
      dynamic date,
      dynamic hour,
      EditionTeam? home,
      EditionTeam? away,
      EditionCompetition? edition,
      List<ResultMatch>? resultMatch,
      List<BeforeMatchStat>? beforeStatMatch,
      List<ExtraInfosMatch>? extraInfoMatch,
      List<Prediction>? predictionMatch,
      List<TeamProfileMatch>? matchProfile,
      List<OddsMatch>? matchOdds,
      bool isFinished,
      bool isPosted,
      bool isFirstMatch,
      bool isPredict,
      bool isCompared,
      bool isComparedElo,
      bool isFacted,
      bool isStated});

  $EditionTeamCopyWith<$Res>? get home;
  $EditionTeamCopyWith<$Res>? get away;
  $EditionCompetitionCopyWith<$Res>? get edition;
}

/// @nodoc
class _$MatchCopyWithImpl<$Res, $Val extends Match>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._value, this._then);

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
    Object? name = null,
    Object? date = freezed,
    Object? hour = freezed,
    Object? home = freezed,
    Object? away = freezed,
    Object? edition = freezed,
    Object? resultMatch = freezed,
    Object? beforeStatMatch = freezed,
    Object? extraInfoMatch = freezed,
    Object? predictionMatch = freezed,
    Object? matchProfile = freezed,
    Object? matchOdds = freezed,
    Object? isFinished = null,
    Object? isPosted = null,
    Object? isFirstMatch = null,
    Object? isPredict = null,
    Object? isCompared = null,
    Object? isComparedElo = null,
    Object? isFacted = null,
    Object? isStated = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as dynamic,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as EditionTeam?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as EditionTeam?,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as EditionCompetition?,
      resultMatch: freezed == resultMatch
          ? _value.resultMatch
          : resultMatch // ignore: cast_nullable_to_non_nullable
              as List<ResultMatch>?,
      beforeStatMatch: freezed == beforeStatMatch
          ? _value.beforeStatMatch
          : beforeStatMatch // ignore: cast_nullable_to_non_nullable
              as List<BeforeMatchStat>?,
      extraInfoMatch: freezed == extraInfoMatch
          ? _value.extraInfoMatch
          : extraInfoMatch // ignore: cast_nullable_to_non_nullable
              as List<ExtraInfosMatch>?,
      predictionMatch: freezed == predictionMatch
          ? _value.predictionMatch
          : predictionMatch // ignore: cast_nullable_to_non_nullable
              as List<Prediction>?,
      matchProfile: freezed == matchProfile
          ? _value.matchProfile
          : matchProfile // ignore: cast_nullable_to_non_nullable
              as List<TeamProfileMatch>?,
      matchOdds: freezed == matchOdds
          ? _value.matchOdds
          : matchOdds // ignore: cast_nullable_to_non_nullable
              as List<OddsMatch>?,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      isPosted: null == isPosted
          ? _value.isPosted
          : isPosted // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstMatch: null == isFirstMatch
          ? _value.isFirstMatch
          : isFirstMatch // ignore: cast_nullable_to_non_nullable
              as bool,
      isPredict: null == isPredict
          ? _value.isPredict
          : isPredict // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompared: null == isCompared
          ? _value.isCompared
          : isCompared // ignore: cast_nullable_to_non_nullable
              as bool,
      isComparedElo: null == isComparedElo
          ? _value.isComparedElo
          : isComparedElo // ignore: cast_nullable_to_non_nullable
              as bool,
      isFacted: null == isFacted
          ? _value.isFacted
          : isFacted // ignore: cast_nullable_to_non_nullable
              as bool,
      isStated: null == isStated
          ? _value.isStated
          : isStated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditionTeamCopyWith<$Res>? get home {
    if (_value.home == null) {
      return null;
    }

    return $EditionTeamCopyWith<$Res>(_value.home!, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EditionTeamCopyWith<$Res>? get away {
    if (_value.away == null) {
      return null;
    }

    return $EditionTeamCopyWith<$Res>(_value.away!, (value) {
      return _then(_value.copyWith(away: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EditionCompetitionCopyWith<$Res>? get edition {
    if (_value.edition == null) {
      return null;
    }

    return $EditionCompetitionCopyWith<$Res>(_value.edition!, (value) {
      return _then(_value.copyWith(edition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchImplCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$$MatchImplCopyWith(
          _$MatchImpl value, $Res Function(_$MatchImpl) then) =
      __$$MatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String name,
      dynamic date,
      dynamic hour,
      EditionTeam? home,
      EditionTeam? away,
      EditionCompetition? edition,
      List<ResultMatch>? resultMatch,
      List<BeforeMatchStat>? beforeStatMatch,
      List<ExtraInfosMatch>? extraInfoMatch,
      List<Prediction>? predictionMatch,
      List<TeamProfileMatch>? matchProfile,
      List<OddsMatch>? matchOdds,
      bool isFinished,
      bool isPosted,
      bool isFirstMatch,
      bool isPredict,
      bool isCompared,
      bool isComparedElo,
      bool isFacted,
      bool isStated});

  @override
  $EditionTeamCopyWith<$Res>? get home;
  @override
  $EditionTeamCopyWith<$Res>? get away;
  @override
  $EditionCompetitionCopyWith<$Res>? get edition;
}

/// @nodoc
class __$$MatchImplCopyWithImpl<$Res>
    extends _$MatchCopyWithImpl<$Res, _$MatchImpl>
    implements _$$MatchImplCopyWith<$Res> {
  __$$MatchImplCopyWithImpl(
      _$MatchImpl _value, $Res Function(_$MatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? name = null,
    Object? date = freezed,
    Object? hour = freezed,
    Object? home = freezed,
    Object? away = freezed,
    Object? edition = freezed,
    Object? resultMatch = freezed,
    Object? beforeStatMatch = freezed,
    Object? extraInfoMatch = freezed,
    Object? predictionMatch = freezed,
    Object? matchProfile = freezed,
    Object? matchOdds = freezed,
    Object? isFinished = null,
    Object? isPosted = null,
    Object? isFirstMatch = null,
    Object? isPredict = null,
    Object? isCompared = null,
    Object? isComparedElo = null,
    Object? isFacted = null,
    Object? isStated = null,
  }) {
    return _then(_$MatchImpl(
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date ? _value.date! : date,
      hour: freezed == hour ? _value.hour! : hour,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as EditionTeam?,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as EditionTeam?,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as EditionCompetition?,
      resultMatch: freezed == resultMatch
          ? _value._resultMatch
          : resultMatch // ignore: cast_nullable_to_non_nullable
              as List<ResultMatch>?,
      beforeStatMatch: freezed == beforeStatMatch
          ? _value._beforeStatMatch
          : beforeStatMatch // ignore: cast_nullable_to_non_nullable
              as List<BeforeMatchStat>?,
      extraInfoMatch: freezed == extraInfoMatch
          ? _value._extraInfoMatch
          : extraInfoMatch // ignore: cast_nullable_to_non_nullable
              as List<ExtraInfosMatch>?,
      predictionMatch: freezed == predictionMatch
          ? _value._predictionMatch
          : predictionMatch // ignore: cast_nullable_to_non_nullable
              as List<Prediction>?,
      matchProfile: freezed == matchProfile
          ? _value._matchProfile
          : matchProfile // ignore: cast_nullable_to_non_nullable
              as List<TeamProfileMatch>?,
      matchOdds: freezed == matchOdds
          ? _value._matchOdds
          : matchOdds // ignore: cast_nullable_to_non_nullable
              as List<OddsMatch>?,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      isPosted: null == isPosted
          ? _value.isPosted
          : isPosted // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstMatch: null == isFirstMatch
          ? _value.isFirstMatch
          : isFirstMatch // ignore: cast_nullable_to_non_nullable
              as bool,
      isPredict: null == isPredict
          ? _value.isPredict
          : isPredict // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompared: null == isCompared
          ? _value.isCompared
          : isCompared // ignore: cast_nullable_to_non_nullable
              as bool,
      isComparedElo: null == isComparedElo
          ? _value.isComparedElo
          : isComparedElo // ignore: cast_nullable_to_non_nullable
              as bool,
      isFacted: null == isFacted
          ? _value.isFacted
          : isFacted // ignore: cast_nullable_to_non_nullable
              as bool,
      isStated: null == isStated
          ? _value.isStated
          : isStated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchImpl with DiagnosticableTreeMixin implements _Match {
  const _$MatchImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.name = "",
      this.date = "",
      this.hour = "",
      this.home,
      this.away,
      this.edition,
      final List<ResultMatch>? resultMatch,
      final List<BeforeMatchStat>? beforeStatMatch,
      final List<ExtraInfosMatch>? extraInfoMatch,
      final List<Prediction>? predictionMatch,
      final List<TeamProfileMatch>? matchProfile,
      final List<OddsMatch>? matchOdds,
      this.isFinished = false,
      this.isPosted = false,
      this.isFirstMatch = false,
      this.isPredict = false,
      this.isCompared = false,
      this.isComparedElo = false,
      this.isFacted = false,
      this.isStated = false})
      : _resultMatch = resultMatch,
        _beforeStatMatch = beforeStatMatch,
        _extraInfoMatch = extraInfoMatch,
        _predictionMatch = predictionMatch,
        _matchProfile = matchProfile,
        _matchOdds = matchOdds;

  factory _$MatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchImplFromJson(json);

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
  final String name;
  @override
  @JsonKey()
  final dynamic date;
  @override
  @JsonKey()
  final dynamic hour;
  @override
  final EditionTeam? home;
  @override
  final EditionTeam? away;
  @override
  final EditionCompetition? edition;
  final List<ResultMatch>? _resultMatch;
  @override
  List<ResultMatch>? get resultMatch {
    final value = _resultMatch;
    if (value == null) return null;
    if (_resultMatch is EqualUnmodifiableListView) return _resultMatch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BeforeMatchStat>? _beforeStatMatch;
  @override
  List<BeforeMatchStat>? get beforeStatMatch {
    final value = _beforeStatMatch;
    if (value == null) return null;
    if (_beforeStatMatch is EqualUnmodifiableListView) return _beforeStatMatch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExtraInfosMatch>? _extraInfoMatch;
  @override
  List<ExtraInfosMatch>? get extraInfoMatch {
    final value = _extraInfoMatch;
    if (value == null) return null;
    if (_extraInfoMatch is EqualUnmodifiableListView) return _extraInfoMatch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Prediction>? _predictionMatch;
  @override
  List<Prediction>? get predictionMatch {
    final value = _predictionMatch;
    if (value == null) return null;
    if (_predictionMatch is EqualUnmodifiableListView) return _predictionMatch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TeamProfileMatch>? _matchProfile;
  @override
  List<TeamProfileMatch>? get matchProfile {
    final value = _matchProfile;
    if (value == null) return null;
    if (_matchProfile is EqualUnmodifiableListView) return _matchProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OddsMatch>? _matchOdds;
  @override
  List<OddsMatch>? get matchOdds {
    final value = _matchOdds;
    if (value == null) return null;
    if (_matchOdds is EqualUnmodifiableListView) return _matchOdds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isFinished;
  @override
  @JsonKey()
  final bool isPosted;
  @override
  @JsonKey()
  final bool isFirstMatch;
  @override
  @JsonKey()
  final bool isPredict;
  @override
  @JsonKey()
  final bool isCompared;
  @override
  @JsonKey()
  final bool isComparedElo;
  @override
  @JsonKey()
  final bool isFacted;
  @override
  @JsonKey()
  final bool isStated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Match(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, name: $name, date: $date, hour: $hour, home: $home, away: $away, edition: $edition, resultMatch: $resultMatch, beforeStatMatch: $beforeStatMatch, extraInfoMatch: $extraInfoMatch, predictionMatch: $predictionMatch, matchProfile: $matchProfile, matchOdds: $matchOdds, isFinished: $isFinished, isPosted: $isPosted, isFirstMatch: $isFirstMatch, isPredict: $isPredict, isCompared: $isCompared, isComparedElo: $isComparedElo, isFacted: $isFacted, isStated: $isStated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Match'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updateAt', updateAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('hour', hour))
      ..add(DiagnosticsProperty('home', home))
      ..add(DiagnosticsProperty('away', away))
      ..add(DiagnosticsProperty('edition', edition))
      ..add(DiagnosticsProperty('resultMatch', resultMatch))
      ..add(DiagnosticsProperty('beforeStatMatch', beforeStatMatch))
      ..add(DiagnosticsProperty('extraInfoMatch', extraInfoMatch))
      ..add(DiagnosticsProperty('predictionMatch', predictionMatch))
      ..add(DiagnosticsProperty('matchProfile', matchProfile))
      ..add(DiagnosticsProperty('matchOdds', matchOdds))
      ..add(DiagnosticsProperty('isFinished', isFinished))
      ..add(DiagnosticsProperty('isPosted', isPosted))
      ..add(DiagnosticsProperty('isFirstMatch', isFirstMatch))
      ..add(DiagnosticsProperty('isPredict', isPredict))
      ..add(DiagnosticsProperty('isCompared', isCompared))
      ..add(DiagnosticsProperty('isComparedElo', isComparedElo))
      ..add(DiagnosticsProperty('isFacted', isFacted))
      ..add(DiagnosticsProperty('isStated', isStated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away) &&
            (identical(other.edition, edition) || other.edition == edition) &&
            const DeepCollectionEquality()
                .equals(other._resultMatch, _resultMatch) &&
            const DeepCollectionEquality()
                .equals(other._beforeStatMatch, _beforeStatMatch) &&
            const DeepCollectionEquality()
                .equals(other._extraInfoMatch, _extraInfoMatch) &&
            const DeepCollectionEquality()
                .equals(other._predictionMatch, _predictionMatch) &&
            const DeepCollectionEquality()
                .equals(other._matchProfile, _matchProfile) &&
            const DeepCollectionEquality()
                .equals(other._matchOdds, _matchOdds) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.isPosted, isPosted) ||
                other.isPosted == isPosted) &&
            (identical(other.isFirstMatch, isFirstMatch) ||
                other.isFirstMatch == isFirstMatch) &&
            (identical(other.isPredict, isPredict) ||
                other.isPredict == isPredict) &&
            (identical(other.isCompared, isCompared) ||
                other.isCompared == isCompared) &&
            (identical(other.isComparedElo, isComparedElo) ||
                other.isComparedElo == isComparedElo) &&
            (identical(other.isFacted, isFacted) ||
                other.isFacted == isFacted) &&
            (identical(other.isStated, isStated) ||
                other.isStated == isStated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updateAt,
        deleted,
        name,
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(hour),
        home,
        away,
        edition,
        const DeepCollectionEquality().hash(_resultMatch),
        const DeepCollectionEquality().hash(_beforeStatMatch),
        const DeepCollectionEquality().hash(_extraInfoMatch),
        const DeepCollectionEquality().hash(_predictionMatch),
        const DeepCollectionEquality().hash(_matchProfile),
        const DeepCollectionEquality().hash(_matchOdds),
        isFinished,
        isPosted,
        isFirstMatch,
        isPredict,
        isCompared,
        isComparedElo,
        isFacted,
        isStated
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      __$$MatchImplCopyWithImpl<_$MatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchImplToJson(
      this,
    );
  }
}

abstract class _Match implements Match {
  const factory _Match(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final String name,
      final dynamic date,
      final dynamic hour,
      final EditionTeam? home,
      final EditionTeam? away,
      final EditionCompetition? edition,
      final List<ResultMatch>? resultMatch,
      final List<BeforeMatchStat>? beforeStatMatch,
      final List<ExtraInfosMatch>? extraInfoMatch,
      final List<Prediction>? predictionMatch,
      final List<TeamProfileMatch>? matchProfile,
      final List<OddsMatch>? matchOdds,
      final bool isFinished,
      final bool isPosted,
      final bool isFirstMatch,
      final bool isPredict,
      final bool isCompared,
      final bool isComparedElo,
      final bool isFacted,
      final bool isStated}) = _$MatchImpl;

  factory _Match.fromJson(Map<String, dynamic> json) = _$MatchImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updateAt;
  @override
  bool get deleted;
  @override
  String get name;
  @override
  dynamic get date;
  @override
  dynamic get hour;
  @override
  EditionTeam? get home;
  @override
  EditionTeam? get away;
  @override
  EditionCompetition? get edition;
  @override
  List<ResultMatch>? get resultMatch;
  @override
  List<BeforeMatchStat>? get beforeStatMatch;
  @override
  List<ExtraInfosMatch>? get extraInfoMatch;
  @override
  List<Prediction>? get predictionMatch;
  @override
  List<TeamProfileMatch>? get matchProfile;
  @override
  List<OddsMatch>? get matchOdds;
  @override
  bool get isFinished;
  @override
  bool get isPosted;
  @override
  bool get isFirstMatch;
  @override
  bool get isPredict;
  @override
  bool get isCompared;
  @override
  bool get isComparedElo;
  @override
  bool get isFacted;
  @override
  bool get isStated;
  @override
  @JsonKey(ignore: true)
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
