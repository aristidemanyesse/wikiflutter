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
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default("") String name,
    @Default("") String description,
  }) = _TypeFact;

  factory TypeFact.fromJson(Map<String, Object?> json) =>
      _$TypeFactFromJson(json);

  static const String typefactFragment = r"""
  fragment TypeFactFragment on TypeFactGenericType {
    id
    createdAt
    updateAt
    deleted
    name
    description
  }
  """;
}
