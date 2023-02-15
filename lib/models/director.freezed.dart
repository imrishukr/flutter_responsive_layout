// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'director.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Director _$DirectorFromJson(Map<String, dynamic> json) {
  return _Director.fromJson(json);
}

/// @nodoc
mixin _$Director {
  String get name => throw _privateConstructorUsedError;
  Assistant get assistant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectorCopyWith<Director> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectorCopyWith<$Res> {
  factory $DirectorCopyWith(Director value, $Res Function(Director) then) =
      _$DirectorCopyWithImpl<$Res, Director>;
  @useResult
  $Res call({String name, Assistant assistant});

  $AssistantCopyWith<$Res> get assistant;
}

/// @nodoc
class _$DirectorCopyWithImpl<$Res, $Val extends Director>
    implements $DirectorCopyWith<$Res> {
  _$DirectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? assistant = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      assistant: null == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res> get assistant {
    return $AssistantCopyWith<$Res>(_value.assistant, (value) {
      return _then(_value.copyWith(assistant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DirectorCopyWith<$Res> implements $DirectorCopyWith<$Res> {
  factory _$$_DirectorCopyWith(
          _$_Director value, $Res Function(_$_Director) then) =
      __$$_DirectorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Assistant assistant});

  @override
  $AssistantCopyWith<$Res> get assistant;
}

/// @nodoc
class __$$_DirectorCopyWithImpl<$Res>
    extends _$DirectorCopyWithImpl<$Res, _$_Director>
    implements _$$_DirectorCopyWith<$Res> {
  __$$_DirectorCopyWithImpl(
      _$_Director _value, $Res Function(_$_Director) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? assistant = null,
  }) {
    return _then(_$_Director(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      assistant: null == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Director implements _Director {
  const _$_Director({required this.name, required this.assistant});

  factory _$_Director.fromJson(Map<String, dynamic> json) =>
      _$$_DirectorFromJson(json);

  @override
  final String name;
  @override
  final Assistant assistant;

  @override
  String toString() {
    return 'Director(name: $name, assistant: $assistant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Director &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.assistant, assistant) ||
                other.assistant == assistant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, assistant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectorCopyWith<_$_Director> get copyWith =>
      __$$_DirectorCopyWithImpl<_$_Director>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectorToJson(
      this,
    );
  }
}

abstract class _Director implements Director {
  const factory _Director(
      {required final String name,
      required final Assistant assistant}) = _$_Director;

  factory _Director.fromJson(Map<String, dynamic> json) = _$_Director.fromJson;

  @override
  String get name;
  @override
  Assistant get assistant;
  @override
  @JsonKey(ignore: true)
  _$$_DirectorCopyWith<_$_Director> get copyWith =>
      throw _privateConstructorUsedError;
}
