// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
part 'typePrediction.freezed.dart';
part 'typePrediction.g.dart';

@freezed
class TypePrediction with _$TypePrediction {
  const factory TypePrediction({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default("") String name,
  }) = _TypePrediction;

  factory TypePrediction.fromJson(Map<String, Object?> json) =>
      _$TypePredictionFromJson(json);

  static const String typePredictionFragment = """
  fragment TypePredictionFragment on TypePredictionGenericType {
    id
    createdAt
    updateAt
    deleted
    name
  }
  """;
}
