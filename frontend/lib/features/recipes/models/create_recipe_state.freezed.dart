// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateRecipeStateTearOff {
  const _$CreateRecipeStateTearOff();

  _CreateRecipeState call(
      {required bool loading,
      required String name,
      required List<String> ingredients,
      required List<String> instructions}) {
    return _CreateRecipeState(
      loading: loading,
      name: name,
      ingredients: ingredients,
      instructions: instructions,
    );
  }
}

/// @nodoc
const $CreateRecipeState = _$CreateRecipeStateTearOff();

/// @nodoc
mixin _$CreateRecipeState {
  bool get loading => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRecipeStateCopyWith<CreateRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeStateCopyWith<$Res> {
  factory $CreateRecipeStateCopyWith(
          CreateRecipeState value, $Res Function(CreateRecipeState) then) =
      _$CreateRecipeStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      String name,
      List<String> ingredients,
      List<String> instructions});
}

/// @nodoc
class _$CreateRecipeStateCopyWithImpl<$Res>
    implements $CreateRecipeStateCopyWith<$Res> {
  _$CreateRecipeStateCopyWithImpl(this._value, this._then);

  final CreateRecipeState _value;
  // ignore: unused_field
  final $Res Function(CreateRecipeState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$CreateRecipeStateCopyWith<$Res>
    implements $CreateRecipeStateCopyWith<$Res> {
  factory _$CreateRecipeStateCopyWith(
          _CreateRecipeState value, $Res Function(_CreateRecipeState) then) =
      __$CreateRecipeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      String name,
      List<String> ingredients,
      List<String> instructions});
}

/// @nodoc
class __$CreateRecipeStateCopyWithImpl<$Res>
    extends _$CreateRecipeStateCopyWithImpl<$Res>
    implements _$CreateRecipeStateCopyWith<$Res> {
  __$CreateRecipeStateCopyWithImpl(
      _CreateRecipeState _value, $Res Function(_CreateRecipeState) _then)
      : super(_value, (v) => _then(v as _CreateRecipeState));

  @override
  _CreateRecipeState get _value => super._value as _CreateRecipeState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_CreateRecipeState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_CreateRecipeState implements _CreateRecipeState {
  const _$_CreateRecipeState(
      {required this.loading,
      required this.name,
      required this.ingredients,
      required this.instructions});

  @override
  final bool loading;
  @override
  final String name;
  @override
  final List<String> ingredients;
  @override
  final List<String> instructions;

  @override
  String toString() {
    return 'CreateRecipeState(loading: $loading, name: $name, ingredients: $ingredients, instructions: $instructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateRecipeState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ingredients) ^
      const DeepCollectionEquality().hash(instructions);

  @JsonKey(ignore: true)
  @override
  _$CreateRecipeStateCopyWith<_CreateRecipeState> get copyWith =>
      __$CreateRecipeStateCopyWithImpl<_CreateRecipeState>(this, _$identity);
}

abstract class _CreateRecipeState implements CreateRecipeState {
  const factory _CreateRecipeState(
      {required bool loading,
      required String name,
      required List<String> ingredients,
      required List<String> instructions}) = _$_CreateRecipeState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get ingredients => throw _privateConstructorUsedError;
  @override
  List<String> get instructions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateRecipeStateCopyWith<_CreateRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
