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
  String get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  dynamic get date => throw _privateConstructorUsedError;
  dynamic get hour => throw _privateConstructorUsedError;
  EditionTeam? get home => throw _privateConstructorUsedError;
  EditionTeam? get away => throw _privateConstructorUsedError;
  EditionCompetition? get edition => throw _privateConstructorUsedError;
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
      String updatedAt,
      bool deleted,
      String name,
      dynamic date,
      dynamic hour,
      EditionTeam? home,
      EditionTeam? away,
      EditionCompetition? edition,
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
    Object? updatedAt = null,
    Object? deleted = null,
    Object? name = null,
    Object? date = freezed,
    Object? hour = freezed,
    Object? home = freezed,
    Object? away = freezed,
    Object? edition = freezed,
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
      String updatedAt,
      bool deleted,
      String name,
      dynamic date,
      dynamic hour,
      EditionTeam? home,
      EditionTeam? away,
      EditionCompetition? edition,
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
    Object? updatedAt = null,
    Object? deleted = null,
    Object? name = null,
    Object? date = freezed,
    Object? hour = freezed,
    Object? home = freezed,
    Object? away = freezed,
    Object? edition = freezed,
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
      this.updatedAt = "",
      this.deleted = false,
      this.name = "",
      this.date = "",
      this.hour = "",
      this.home,
      this.away,
      this.edition,
      this.isFinished = false,
      this.isPosted = false,
      this.isFirstMatch = false,
      this.isPredict = false,
      this.isCompared = false,
      this.isComparedElo = false,
      this.isFacted = false,
      this.isStated = false});

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
  final String updatedAt;
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
    return 'Match(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deleted: $deleted, name: $name, date: $date, hour: $hour, home: $home, away: $away, edition: $edition, isFinished: $isFinished, isPosted: $isPosted, isFirstMatch: $isFirstMatch, isPredict: $isPredict, isCompared: $isCompared, isComparedElo: $isComparedElo, isFacted: $isFacted, isStated: $isStated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Match'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('hour', hour))
      ..add(DiagnosticsProperty('home', home))
      ..add(DiagnosticsProperty('away', away))
      ..add(DiagnosticsProperty('edition', edition))
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
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away) &&
            (identical(other.edition, edition) || other.edition == edition) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      deleted,
      name,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(hour),
      home,
      away,
      edition,
      isFinished,
      isPosted,
      isFirstMatch,
      isPredict,
      isCompared,
      isComparedElo,
      isFacted,
      isStated);

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
      final String updatedAt,
      final bool deleted,
      final String name,
      final dynamic date,
      final dynamic hour,
      final EditionTeam? home,
      final EditionTeam? away,
      final EditionCompetition? edition,
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
  String get updatedAt;
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
