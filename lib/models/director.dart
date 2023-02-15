import 'package:dashboard_example/models/assistant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'director.freezed.dart';
part 'director.g.dart';

@freezed
class Director with _$Director {
  const factory Director({
    required String name,
    required Assistant assistant,
  }) = _Director;

  factory Director.fromJson(Map<String, dynamic> json) =>
      _$DirectorFromJson(json);
}
