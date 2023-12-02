// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Prediction _$PredictionFromJson(Map<String, dynamic> json) {
  return _Prediction.fromJson(json);
}

/// @nodoc
mixin _$Prediction {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  ModePrediction? get mode => throw _privateConstructorUsedError;
  TypePrediction? get type => throw _privateConstructorUsedError;
  Match? get match => throw _privateConstructorUsedError;
  double get pct => throw _privateConstructorUsedError;
  bool? get isChecked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionCopyWith<Prediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionCopyWith<$Res> {
  factory $PredictionCopyWith(
          Prediction value, $Res Function(Prediction) then) =
      _$PredictionCopyWithImpl<$Res, Prediction>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      ModePrediction? mode,
      TypePrediction? type,
      Match? match,
      double pct,
      bool? isChecked});

  $ModePredictionCopyWith<$Res>? get mode;
  $TypePredictionCopyWith<$Res>? get type;
  $MatchCopyWith<$Res>? get match;
}

/// @nodoc
class _$PredictionCopyWithImpl<$Res, $Val extends Prediction>
    implements $PredictionCopyWith<$Res> {
  _$PredictionCopyWithImpl(this._value, this._then);

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
    Object? mode = freezed,
    Object? type = freezed,
    Object? match = freezed,
    Object? pct = null,
    Object? isChecked = freezed,
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
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ModePrediction?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypePrediction?,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match?,
      pct: null == pct
          ? _value.pct
          : pct // ignore: cast_nullable_to_non_nullable
              as double,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModePredictionCopyWith<$Res>? get mode {
    if (_value.mode == null) {
      return null;
    }

    return $ModePredictionCopyWith<$Res>(_value.mode!, (value) {
      return _then(_value.copyWith(mode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TypePredictionCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypePredictionCopyWith<$Res>(_value.type!, (value) {
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
}

/// @nodoc
abstract class _$$PredictionImplCopyWith<$Res>
    implements $PredictionCopyWith<$Res> {
  factory _$$PredictionImplCopyWith(
          _$PredictionImpl value, $Res Function(_$PredictionImpl) then) =
      __$$PredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      ModePrediction? mode,
      TypePrediction? type,
      Match? match,
      double pct,
      bool? isChecked});

  @override
  $ModePredictionCopyWith<$Res>? get mode;
  @override
  $TypePredictionCopyWith<$Res>? get type;
  @override
  $MatchCopyWith<$Res>? get match;
}

/// @nodoc
class __$$PredictionImplCopyWithImpl<$Res>
    extends _$PredictionCopyWithImpl<$Res, _$PredictionImpl>
    implements _$$PredictionImplCopyWith<$Res> {
  __$$PredictionImplCopyWithImpl(
      _$PredictionImpl _value, $Res Function(_$PredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? mode = freezed,
    Object? type = freezed,
    Object? match = freezed,
    Object? pct = null,
    Object? isChecked = freezed,
  }) {
    return _then(_$PredictionImpl(
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
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ModePrediction?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypePrediction?,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match?,
      pct: null == pct
          ? _value.pct
          : pct // ignore: cast_nullable_to_non_nullable
              as double,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PredictionImpl with DiagnosticableTreeMixin implements _Prediction {
  const _$PredictionImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.mode,
      this.type,
      this.match,
      this.pct = 0.0,
      this.isChecked = null});

  factory _$PredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredictionImplFromJson(json);

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
  final ModePrediction? mode;
  @override
  final TypePrediction? type;
  @override
  final Match? match;
  @override
  @JsonKey()
  final double pct;
  @override
  @JsonKey()
  final bool? isChecked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Prediction(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, mode: $mode, type: $type, match: $match, pct: $pct, isChecked: $isChecked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Prediction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updateAt', updateAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('match', match))
      ..add(DiagnosticsProperty('pct', pct))
      ..add(DiagnosticsProperty('isChecked', isChecked));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.pct, pct) || other.pct == pct) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updateAt, deleted,
      mode, type, match, pct, isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictionImplCopyWith<_$PredictionImpl> get copyWith =>
      __$$PredictionImplCopyWithImpl<_$PredictionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PredictionImplToJson(
      this,
    );
  }
}

abstract class _Prediction implements Prediction {
  const factory _Prediction(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final ModePrediction? mode,
      final TypePrediction? type,
      final Match? match,
      final double pct,
      final bool? isChecked}) = _$PredictionImpl;

  factory _Prediction.fromJson(Map<String, dynamic> json) =
      _$PredictionImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updateAt;
  @override
  bool get deleted;
  @override
  ModePrediction? get mode;
  @override
  TypePrediction? get type;
  @override
  Match? get match;
  @override
  double get pct;
  @override
  bool? get isChecked;
  @override
  @JsonKey(ignore: true)
  _$$PredictionImplCopyWith<_$PredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
