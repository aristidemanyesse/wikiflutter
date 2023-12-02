// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updateAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name2 => throw _privateConstructorUsedError;
  String get abr => throw _privateConstructorUsedError;
  Pays? get pays => throw _privateConstructorUsedError;
  String get color1 => throw _privateConstructorUsedError;
  String get color2 => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String name,
      String code,
      String name2,
      String abr,
      Pays? pays,
      String color1,
      String color2,
      String logo});

  $PaysCopyWith<$Res>? get pays;
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

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
    Object? code = null,
    Object? name2 = null,
    Object? abr = null,
    Object? pays = freezed,
    Object? color1 = null,
    Object? color2 = null,
    Object? logo = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name2: null == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String,
      abr: null == abr
          ? _value.abr
          : abr // ignore: cast_nullable_to_non_nullable
              as String,
      pays: freezed == pays
          ? _value.pays
          : pays // ignore: cast_nullable_to_non_nullable
              as Pays?,
      color1: null == color1
          ? _value.color1
          : color1 // ignore: cast_nullable_to_non_nullable
              as String,
      color2: null == color2
          ? _value.color2
          : color2 // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaysCopyWith<$Res>? get pays {
    if (_value.pays == null) {
      return null;
    }

    return $PaysCopyWith<$Res>(_value.pays!, (value) {
      return _then(_value.copyWith(pays: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamImplCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$TeamImplCopyWith(
          _$TeamImpl value, $Res Function(_$TeamImpl) then) =
      __$$TeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updateAt,
      bool deleted,
      String name,
      String code,
      String name2,
      String abr,
      Pays? pays,
      String color1,
      String color2,
      String logo});

  @override
  $PaysCopyWith<$Res>? get pays;
}

/// @nodoc
class __$$TeamImplCopyWithImpl<$Res>
    extends _$TeamCopyWithImpl<$Res, _$TeamImpl>
    implements _$$TeamImplCopyWith<$Res> {
  __$$TeamImplCopyWithImpl(_$TeamImpl _value, $Res Function(_$TeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? deleted = null,
    Object? name = null,
    Object? code = null,
    Object? name2 = null,
    Object? abr = null,
    Object? pays = freezed,
    Object? color1 = null,
    Object? color2 = null,
    Object? logo = null,
  }) {
    return _then(_$TeamImpl(
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name2: null == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String,
      abr: null == abr
          ? _value.abr
          : abr // ignore: cast_nullable_to_non_nullable
              as String,
      pays: freezed == pays
          ? _value.pays
          : pays // ignore: cast_nullable_to_non_nullable
              as Pays?,
      color1: null == color1
          ? _value.color1
          : color1 // ignore: cast_nullable_to_non_nullable
              as String,
      color2: null == color2
          ? _value.color2
          : color2 // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamImpl extends _Team {
  const _$TeamImpl(
      {this.id = "",
      this.createdAt = "",
      this.updateAt = "",
      this.deleted = false,
      this.name = "",
      this.code = "",
      this.name2 = "",
      this.abr = "",
      this.pays,
      this.color1 = "",
      this.color2 = "",
      this.logo = ""})
      : super._();

  factory _$TeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamImplFromJson(json);

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
  final String code;
  @override
  @JsonKey()
  final String name2;
  @override
  @JsonKey()
  final String abr;
  @override
  final Pays? pays;
  @override
  @JsonKey()
  final String color1;
  @override
  @JsonKey()
  final String color2;
  @override
  @JsonKey()
  final String logo;

  @override
  String toString() {
    return 'Team(id: $id, createdAt: $createdAt, updateAt: $updateAt, deleted: $deleted, name: $name, code: $code, name2: $name2, abr: $abr, pays: $pays, color1: $color1, color2: $color2, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name2, name2) || other.name2 == name2) &&
            (identical(other.abr, abr) || other.abr == abr) &&
            (identical(other.pays, pays) || other.pays == pays) &&
            (identical(other.color1, color1) || other.color1 == color1) &&
            (identical(other.color2, color2) || other.color2 == color2) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updateAt, deleted,
      name, code, name2, abr, pays, color1, color2, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      __$$TeamImplCopyWithImpl<_$TeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamImplToJson(
      this,
    );
  }
}

abstract class _Team extends Team {
  const factory _Team(
      {final String id,
      final String createdAt,
      final String updateAt,
      final bool deleted,
      final String name,
      final String code,
      final String name2,
      final String abr,
      final Pays? pays,
      final String color1,
      final String color2,
      final String logo}) = _$TeamImpl;
  const _Team._() : super._();

  factory _Team.fromJson(Map<String, dynamic> json) = _$TeamImpl.fromJson;

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
  String get code;
  @override
  String get name2;
  @override
  String get abr;
  @override
  Pays? get pays;
  @override
  String get color1;
  @override
  String get color2;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
