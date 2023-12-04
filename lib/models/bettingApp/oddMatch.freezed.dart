// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oddMatch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OddsMatch _$OddsMatchFromJson(Map<String, dynamic> json) {
  return _OddsMatch.fromJson(json);
}

/// @nodoc
mixin _$OddsMatch {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  double get home => throw _privateConstructorUsedError;
  double get draw => throw _privateConstructorUsedError;
  double get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OddsMatchCopyWith<OddsMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OddsMatchCopyWith<$Res> {
  factory $OddsMatchCopyWith(OddsMatch value, $Res Function(OddsMatch) then) =
      _$OddsMatchCopyWithImpl<$Res, OddsMatch>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      double home,
      double draw,
      double away});
}

/// @nodoc
class _$OddsMatchCopyWithImpl<$Res, $Val extends OddsMatch>
    implements $OddsMatchCopyWith<$Res> {
  _$OddsMatchCopyWithImpl(this._value, this._then);

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
    Object? home = null,
    Object? draw = null,
    Object? away = null,
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
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as double,
      draw: null == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as double,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OddsMatchImplCopyWith<$Res>
    implements $OddsMatchCopyWith<$Res> {
  factory _$$OddsMatchImplCopyWith(
          _$OddsMatchImpl value, $Res Function(_$OddsMatchImpl) then) =
      __$$OddsMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      double home,
      double draw,
      double away});
}

/// @nodoc
class __$$OddsMatchImplCopyWithImpl<$Res>
    extends _$OddsMatchCopyWithImpl<$Res, _$OddsMatchImpl>
    implements _$$OddsMatchImplCopyWith<$Res> {
  __$$OddsMatchImplCopyWithImpl(
      _$OddsMatchImpl _value, $Res Function(_$OddsMatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? home = null,
    Object? draw = null,
    Object? away = null,
  }) {
    return _then(_$OddsMatchImpl(
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
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as double,
      draw: null == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as double,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OddsMatchImpl with DiagnosticableTreeMixin implements _OddsMatch {
  const _$OddsMatchImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.home = 0.0,
      this.draw = 0.0,
      this.away = 0.0});

  factory _$OddsMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$OddsMatchImplFromJson(json);

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
  final double home;
  @override
  @JsonKey()
  final double draw;
  @override
  @JsonKey()
  final double away;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OddsMatch(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, home: $home, draw: $draw, away: $away)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OddsMatch'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updateAt', updateAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('home', home))
      ..add(DiagnosticsProperty('draw', draw))
      ..add(DiagnosticsProperty('away', away));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OddsMatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.draw, draw) || other.draw == draw) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, updateAt, deleted, home, draw, away);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OddsMatchImplCopyWith<_$OddsMatchImpl> get copyWith =>
      __$$OddsMatchImplCopyWithImpl<_$OddsMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OddsMatchImplToJson(
      this,
    );
  }
}

abstract class _OddsMatch implements OddsMatch {
  const factory _OddsMatch(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final double home,
      final double draw,
      final double away}) = _$OddsMatchImpl;

  factory _OddsMatch.fromJson(Map<String, dynamic> json) =
      _$OddsMatchImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updateAt;
  @override
  bool get deleted;
  @override
  double get home;
  @override
  double get draw;
  @override
  double get away;
  @override
  @JsonKey(ignore: true)
  _$$OddsMatchImplCopyWith<_$OddsMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
