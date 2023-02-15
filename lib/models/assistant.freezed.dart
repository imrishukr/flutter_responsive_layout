// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Assistant _$AssistantFromJson(Map<String, dynamic> json) {
  return _Assistant.fromJson(json);
}

/// @nodoc
mixin _$Assistant {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssistantCopyWith<Assistant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantCopyWith<$Res> {
  factory $AssistantCopyWith(Assistant value, $Res Function(Assistant) then) =
      _$AssistantCopyWithImpl<$Res, Assistant>;
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class _$AssistantCopyWithImpl<$Res, $Val extends Assistant>
    implements $AssistantCopyWith<$Res> {
  _$AssistantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssistantCopyWith<$Res> implements $AssistantCopyWith<$Res> {
  factory _$$_AssistantCopyWith(
          _$_Assistant value, $Res Function(_$_Assistant) then) =
      __$$_AssistantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class __$$_AssistantCopyWithImpl<$Res>
    extends _$AssistantCopyWithImpl<$Res, _$_Assistant>
    implements _$$_AssistantCopyWith<$Res> {
  __$$_AssistantCopyWithImpl(
      _$_Assistant _value, $Res Function(_$_Assistant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$_Assistant(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Assistant implements _Assistant {
  const _$_Assistant({required this.name, required this.age});

  factory _$_Assistant.fromJson(Map<String, dynamic> json) =>
      _$$_AssistantFromJson(json);

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'Assistant(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Assistant &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssistantCopyWith<_$_Assistant> get copyWith =>
      __$$_AssistantCopyWithImpl<_$_Assistant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssistantToJson(
      this,
    );
  }
}

abstract class _Assistant implements Assistant {
  const factory _Assistant(
      {required final String name, required final int age}) = _$_Assistant;

  factory _Assistant.fromJson(Map<String, dynamic> json) =
      _$_Assistant.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_AssistantCopyWith<_$_Assistant> get copyWith =>
      throw _privateConstructorUsedError;
}
