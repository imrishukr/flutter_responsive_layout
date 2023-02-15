// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'director.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Director _$$_DirectorFromJson(Map<String, dynamic> json) => _$_Director(
      name: json['name'] as String,
      assistant: Assistant.fromJson(json['assistant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DirectorToJson(_$_Director instance) =>
    <String, dynamic>{
      'name': instance.name,
      'assistant': instance.assistant,
    };
