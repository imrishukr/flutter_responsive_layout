import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistant.freezed.dart';
part 'assistant.g.dart';

@freezed
class Assistant with _$Assistant {
  const factory Assistant({
    required String name,
    required int age,
  }) = _Assistant;

  factory Assistant.fromJson(Map<String, dynamic> json) =>
      _$AssistantFromJson(json);
}
