// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRecipeInput> _$gRecipeInputSerializer =
    new _$GRecipeInputSerializer();

class _$GRecipeInputSerializer implements StructuredSerializer<GRecipeInput> {
  @override
  final Iterable<Type> types = const [GRecipeInput, _$GRecipeInput];
  @override
  final String wireName = 'GRecipeInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRecipeInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'ingredients',
      serializers.serialize(object.ingredients,
          specifiedType: const FullType(String)),
      'instructions',
      serializers.serialize(object.instructions,
          specifiedType: const FullType(String)),
      'info',
      serializers.serialize(object.info, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRecipeInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecipeInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ingredients':
          result.ingredients = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instructions':
          result.instructions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates)).build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDateTime build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GRecipeInput extends GRecipeInput {
  @override
  final String name;
  @override
  final String ingredients;
  @override
  final String instructions;
  @override
  final String info;

  factory _$GRecipeInput([void Function(GRecipeInputBuilder)? updates]) =>
      (new GRecipeInputBuilder()..update(updates)).build();

  _$GRecipeInput._(
      {required this.name,
      required this.ingredients,
      required this.instructions,
      required this.info})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'GRecipeInput', 'name');
    BuiltValueNullFieldError.checkNotNull(
        ingredients, 'GRecipeInput', 'ingredients');
    BuiltValueNullFieldError.checkNotNull(
        instructions, 'GRecipeInput', 'instructions');
    BuiltValueNullFieldError.checkNotNull(info, 'GRecipeInput', 'info');
  }

  @override
  GRecipeInput rebuild(void Function(GRecipeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecipeInputBuilder toBuilder() => new GRecipeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecipeInput &&
        name == other.name &&
        ingredients == other.ingredients &&
        instructions == other.instructions &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), ingredients.hashCode),
            instructions.hashCode),
        info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRecipeInput')
          ..add('name', name)
          ..add('ingredients', ingredients)
          ..add('instructions', instructions)
          ..add('info', info))
        .toString();
  }
}

class GRecipeInputBuilder
    implements Builder<GRecipeInput, GRecipeInputBuilder> {
  _$GRecipeInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _ingredients;
  String? get ingredients => _$this._ingredients;
  set ingredients(String? ingredients) => _$this._ingredients = ingredients;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  GRecipeInputBuilder();

  GRecipeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ingredients = $v.ingredients;
      _instructions = $v.instructions;
      _info = $v.info;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecipeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecipeInput;
  }

  @override
  void update(void Function(GRecipeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRecipeInput build() {
    final _$result = _$v ??
        new _$GRecipeInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GRecipeInput', 'name'),
            ingredients: BuiltValueNullFieldError.checkNotNull(
                ingredients, 'GRecipeInput', 'ingredients'),
            instructions: BuiltValueNullFieldError.checkNotNull(
                instructions, 'GRecipeInput', 'instructions'),
            info: BuiltValueNullFieldError.checkNotNull(
                info, 'GRecipeInput', 'info'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
