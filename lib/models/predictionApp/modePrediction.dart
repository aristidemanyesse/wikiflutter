// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'modePrediction.freezed.dart';
part 'modePrediction.g.dart';

@freezed
class ModePrediction with _$ModePrediction {
  const factory ModePrediction({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default("") String name,
  }) = _ModePrediction;

  factory ModePrediction.fromJson(Map<String, Object?> json) =>
      _$ModePredictionFromJson(json);

  static const String modePredictionFragment = """
  fragment ModePredictionFragment on ModePredictionGenericType {
    id
    createdAt
    updateAt
    deleted
    name
  }
  """;
}
