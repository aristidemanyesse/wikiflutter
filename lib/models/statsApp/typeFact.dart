// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'typeFact.freezed.dart';
part 'typeFact.g.dart';

@freezed
class TypeFact with _$TypeFact {
  const factory TypeFact({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    @Default("") String name,
    @Default("") String description,
  }) = _TypeFact;

  factory TypeFact.fromJson(Map<String, Object?> json) =>
      _$TypeFactFromJson(json);
}