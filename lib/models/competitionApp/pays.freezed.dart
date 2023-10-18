// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pays.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pays _$PaysFromJson(Map<String, dynamic> json) {
  return _Pays.fromJson(json);
}

/// @nodoc
mixin _$Pays {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get abr => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaysCopyWith<Pays> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaysCopyWith<$Res> {
  factory $PaysCopyWith(Pays value, $Res Function(Pays) then) =
      _$PaysCopyWithImpl<$Res, Pays>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      bool deleted,
      String name,
      String code,
      String abr,
      String flag});
}

/// @nodoc
class _$PaysCopyWithImpl<$Res, $Val extends Pays>
    implements $PaysCopyWith<$Res> {
  _$PaysCopyWithImpl(this._value, this._then);

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
    Object? code = null,
    Object? abr = null,
    Object? flag = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      abr: null == abr
          ? _value.abr
          : abr // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaysImplCopyWith<$Res> implements $PaysCopyWith<$Res> {
  factory _$$PaysImplCopyWith(
          _$PaysImpl value, $Res Function(_$PaysImpl) then) =
      __$$PaysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      bool deleted,
      String name,
      String code,
      String abr,
      String flag});
}

/// @nodoc
class __$$PaysImplCopyWithImpl<$Res>
    extends _$PaysCopyWithImpl<$Res, _$PaysImpl>
    implements _$$PaysImplCopyWith<$Res> {
  __$$PaysImplCopyWithImpl(_$PaysImpl _value, $Res Function(_$PaysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deleted = null,
    Object? name = null,
    Object? code = null,
    Object? abr = null,
    Object? flag = null,
  }) {
    return _then(_$PaysImpl(
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      abr: null == abr
          ? _value.abr
          : abr // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaysImpl with DiagnosticableTreeMixin implements _Pays {
  const _$PaysImpl(
      {this.id = "",
      this.createdAt = "",
      this.updatedAt = "",
      this.deleted = false,
      required this.name,
      this.code = "",
      this.abr = "",
      this.flag = ""});

  factory _$PaysImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaysImplFromJson(json);

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
  final String name;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String abr;
  @override
  @JsonKey()
  final String flag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pays(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deleted: $deleted, name: $name, code: $code, abr: $abr, flag: $flag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pays'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('abr', abr))
      ..add(DiagnosticsProperty('flag', flag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaysImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.abr, abr) || other.abr == abr) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, updatedAt, deleted, name, code, abr, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaysImplCopyWith<_$PaysImpl> get copyWith =>
      __$$PaysImplCopyWithImpl<_$PaysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaysImplToJson(
      this,
    );
  }
}

abstract class _Pays implements Pays {
  const factory _Pays(
      {final String id,
      final String createdAt,
      final String updatedAt,
      final bool deleted,
      required final String name,
      final String code,
      final String abr,
      final String flag}) = _$PaysImpl;

  factory _Pays.fromJson(Map<String, dynamic> json) = _$PaysImpl.fromJson;

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
  String get code;
  @override
  String get abr;
  @override
  String get flag;
  @override
  @JsonKey(ignore: true)
  _$$PaysImplCopyWith<_$PaysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
