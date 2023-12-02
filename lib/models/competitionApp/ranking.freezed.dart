// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ranking _$RankingFromJson(Map<String, dynamic> json) {
  return _Ranking.fromJson(json);
}

/// @nodoc
mixin _$Ranking {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  EditionCompetition? get edition => throw _privateConstructorUsedError;
  List<LigneRanking>? get rankingLignes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RankingCopyWith<Ranking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingCopyWith<$Res> {
  factory $RankingCopyWith(Ranking value, $Res Function(Ranking) then) =
      _$RankingCopyWithImpl<$Res, Ranking>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String date,
      EditionCompetition? edition,
      List<LigneRanking>? rankingLignes});

  $EditionCompetitionCopyWith<$Res>? get edition;
}

/// @nodoc
class _$RankingCopyWithImpl<$Res, $Val extends Ranking>
    implements $RankingCopyWith<$Res> {
  _$RankingCopyWithImpl(this._value, this._then);

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
    Object? date = null,
    Object? edition = freezed,
    Object? rankingLignes = freezed,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as EditionCompetition?,
      rankingLignes: freezed == rankingLignes
          ? _value.rankingLignes
          : rankingLignes // ignore: cast_nullable_to_non_nullable
              as List<LigneRanking>?,
    ) as $Val);
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
abstract class _$$RankingImplCopyWith<$Res> implements $RankingCopyWith<$Res> {
  factory _$$RankingImplCopyWith(
          _$RankingImpl value, $Res Function(_$RankingImpl) then) =
      __$$RankingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String date,
      EditionCompetition? edition,
      List<LigneRanking>? rankingLignes});

  @override
  $EditionCompetitionCopyWith<$Res>? get edition;
}

/// @nodoc
class __$$RankingImplCopyWithImpl<$Res>
    extends _$RankingCopyWithImpl<$Res, _$RankingImpl>
    implements _$$RankingImplCopyWith<$Res> {
  __$$RankingImplCopyWithImpl(
      _$RankingImpl _value, $Res Function(_$RankingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? date = null,
    Object? edition = freezed,
    Object? rankingLignes = freezed,
  }) {
    return _then(_$RankingImpl(
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      edition: freezed == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as EditionCompetition?,
      rankingLignes: freezed == rankingLignes
          ? _value._rankingLignes
          : rankingLignes // ignore: cast_nullable_to_non_nullable
              as List<LigneRanking>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingImpl with DiagnosticableTreeMixin implements _Ranking {
  const _$RankingImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.date = "",
      this.edition,
      final List<LigneRanking>? rankingLignes})
      : _rankingLignes = rankingLignes;

  factory _$RankingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingImplFromJson(json);

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
  final String date;
  @override
  final EditionCompetition? edition;
  final List<LigneRanking>? _rankingLignes;
  @override
  List<LigneRanking>? get rankingLignes {
    final value = _rankingLignes;
    if (value == null) return null;
    if (_rankingLignes is EqualUnmodifiableListView) return _rankingLignes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ranking(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, date: $date, edition: $edition, rankingLignes: $rankingLignes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ranking'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updateAt', updateAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('edition', edition))
      ..add(DiagnosticsProperty('rankingLignes', rankingLignes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.edition, edition) || other.edition == edition) &&
            const DeepCollectionEquality()
                .equals(other._rankingLignes, _rankingLignes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updateAt, deleted,
      date, edition, const DeepCollectionEquality().hash(_rankingLignes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingImplCopyWith<_$RankingImpl> get copyWith =>
      __$$RankingImplCopyWithImpl<_$RankingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingImplToJson(
      this,
    );
  }
}

abstract class _Ranking implements Ranking {
  const factory _Ranking(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final String date,
      final EditionCompetition? edition,
      final List<LigneRanking>? rankingLignes}) = _$RankingImpl;

  factory _Ranking.fromJson(Map<String, dynamic> json) = _$RankingImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updateAt;
  @override
  bool get deleted;
  @override
  String get date;
  @override
  EditionCompetition? get edition;
  @override
  List<LigneRanking>? get rankingLignes;
  @override
  @JsonKey(ignore: true)
  _$$RankingImplCopyWith<_$RankingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
