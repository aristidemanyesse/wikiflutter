// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'pays.freezed.dart';
part 'pays.g.dart';

@freezed
class Pays with _$Pays {
  const factory Pays({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    required String name,
    @Default("") String code,
    @Default("") String abr,
    @Default("") String flag,
    // @Default(false) bool grand,
  }) = _Pays;

  factory Pays.fromJson(Map<String, Object?> json) => _$PaysFromJson(json);
}
