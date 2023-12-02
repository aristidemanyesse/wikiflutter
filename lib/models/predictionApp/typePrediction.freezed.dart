// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typePrediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypePrediction _$TypePredictionFromJson(Map<String, dynamic> json) {
  return _TypePrediction.fromJson(json);
}

/// @nodoc
mixin _$TypePrediction {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypePredictionCopyWith<TypePrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypePredictionCopyWith<$Res> {
  factory $TypePredictionCopyWith(
          TypePrediction value, $Res Function(TypePrediction) then) =
      _$TypePredictionCopyWithImpl<$Res, TypePrediction>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String name});
}

/// @nodoc
class _$TypePredictionCopyWithImpl<$Res, $Val extends TypePrediction>
    implements $TypePredictionCopyWith<$Res> {
  _$TypePredictionCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypePredictionImplCopyWith<$Res>
    implements $TypePredictionCopyWith<$Res> {
  factory _$$TypePredictionImplCopyWith(_$TypePredictionImpl value,
          $Res Function(_$TypePredictionImpl) then) =
      __$$TypePredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String name});
}

/// @nodoc
class __$$TypePredictionImplCopyWithImpl<$Res>
    extends _$TypePredictionCopyWithImpl<$Res, _$TypePredictionImpl>
    implements _$$TypePredictionImplCopyWith<$Res> {
  __$$TypePredictionImplCopyWithImpl(
      _$TypePredictionImpl _value, $Res Function(_$TypePredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? name = null,
  }) {
    return _then(_$TypePredictionImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypePredictionImpl implements _TypePrediction {
  const _$TypePredictionImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.name = ""});

  factory _$TypePredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypePredictionImplFromJson(json);

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
  String toString() {
    return 'TypePrediction(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypePredictionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, updateAt, deleted, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypePredictionImplCopyWith<_$TypePredictionImpl> get copyWith =>
      __$$TypePredictionImplCopyWithImpl<_$TypePredictionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypePredictionImplToJson(
      this,
    );
  }
}

abstract class _TypePrediction implements TypePrediction {
  const factory _TypePrediction(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final String name}) = _$TypePredictionImpl;

  factory _TypePrediction.fromJson(Map<String, dynamic> json) =
      _$TypePredictionImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$TypePredictionImplCopyWith<_$TypePredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
