// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'edition.freezed.dart';
part 'edition.g.dart';

@freezed
class Edition with _$Edition {
  const factory Edition({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    @Default("") String name,
  }) = _Edition;

  factory Edition.fromJson(Map<String, Object?> json) =>
      _$EditionFromJson(json);
}
