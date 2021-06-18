// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_recipe.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateRecipeData> _$gCreateRecipeDataSerializer =
    new _$GCreateRecipeDataSerializer();
Serializer<GCreateRecipeData_createRecipe>
    _$gCreateRecipeDataCreateRecipeSerializer =
    new _$GCreateRecipeData_createRecipeSerializer();
Serializer<GCreateRecipeData_createRecipe_recipe>
    _$gCreateRecipeDataCreateRecipeRecipeSerializer =
    new _$GCreateRecipeData_createRecipe_recipeSerializer();

class _$GCreateRecipeDataSerializer
    implements StructuredSerializer<GCreateRecipeData> {
  @override
  final Iterable<Type> types = const [GCreateRecipeData, _$GCreateRecipeData];
  @override
  final String wireName = 'GCreateRecipeData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateRecipeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createRecipe',
      serializers.serialize(object.createRecipe,
          specifiedType: const FullType(GCreateRecipeData_createRecipe)),
    ];

    return result;
  }

  @override
  GCreateRecipeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateRecipeDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createRecipe':
          result.createRecipe.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateRecipeData_createRecipe))!
              as GCreateRecipeData_createRecipe);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateRecipeData_createRecipeSerializer
    implements StructuredSerializer<GCreateRecipeData_createRecipe> {
  @override
  final Iterable<Type> types = const [
    GCreateRecipeData_createRecipe,
    _$GCreateRecipeData_createRecipe
  ];
  @override
  final String wireName = 'GCreateRecipeData_createRecipe';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateRecipeData_createRecipe object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.recipe;
    if (value != null) {
      result
        ..add('recipe')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCreateRecipeData_createRecipe_recipe)));
    }
    return result;
  }

  @override
  GCreateRecipeData_createRecipe deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateRecipeData_createRecipeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recipe':
          result.recipe.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateRecipeData_createRecipe_recipe))!
              as GCreateRecipeData_createRecipe_recipe);
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateRecipeData_createRecipe_recipeSerializer
    implements StructuredSerializer<GCreateRecipeData_createRecipe_recipe> {
  @override
  final Iterable<Type> types = const [
    GCreateRecipeData_createRecipe_recipe,
    _$GCreateRecipeData_createRecipe_recipe
  ];
  @override
  final String wireName = 'GCreateRecipeData_createRecipe_recipe';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateRecipeData_createRecipe_recipe object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateRecipeData_createRecipe_recipe deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateRecipeData_createRecipe_recipeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateRecipeData extends GCreateRecipeData {
  @override
  final String G__typename;
  @override
  final GCreateRecipeData_createRecipe createRecipe;

  factory _$GCreateRecipeData(
          [void Function(GCreateRecipeDataBuilder)? updates]) =>
      (new GCreateRecipeDataBuilder()..update(updates)).build();

  _$GCreateRecipeData._({required this.G__typename, required this.createRecipe})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateRecipeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createRecipe, 'GCreateRecipeData', 'createRecipe');
  }

  @override
  GCreateRecipeData rebuild(void Function(GCreateRecipeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateRecipeDataBuilder toBuilder() =>
      new GCreateRecipeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateRecipeData &&
        G__typename == other.G__typename &&
        createRecipe == other.createRecipe;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createRecipe.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateRecipeData')
          ..add('G__typename', G__typename)
          ..add('createRecipe', createRecipe))
        .toString();
  }
}

class GCreateRecipeDataBuilder
    implements Builder<GCreateRecipeData, GCreateRecipeDataBuilder> {
  _$GCreateRecipeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateRecipeData_createRecipeBuilder? _createRecipe;
  GCreateRecipeData_createRecipeBuilder get createRecipe =>
      _$this._createRecipe ??= new GCreateRecipeData_createRecipeBuilder();
  set createRecipe(GCreateRecipeData_createRecipeBuilder? createRecipe) =>
      _$this._createRecipe = createRecipe;

  GCreateRecipeDataBuilder() {
    GCreateRecipeData._initializeBuilder(this);
  }

  GCreateRecipeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createRecipe = $v.createRecipe.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateRecipeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateRecipeData;
  }

  @override
  void update(void Function(GCreateRecipeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateRecipeData build() {
    _$GCreateRecipeData _$result;
    try {
      _$result = _$v ??
          new _$GCreateRecipeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateRecipeData', 'G__typename'),
              createRecipe: createRecipe.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createRecipe';
        createRecipe.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateRecipeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateRecipeData_createRecipe extends GCreateRecipeData_createRecipe {
  @override
  final String G__typename;
  @override
  final GCreateRecipeData_createRecipe_recipe? recipe;
  @override
  final bool success;

  factory _$GCreateRecipeData_createRecipe(
          [void Function(GCreateRecipeData_createRecipeBuilder)? updates]) =>
      (new GCreateRecipeData_createRecipeBuilder()..update(updates)).build();

  _$GCreateRecipeData_createRecipe._(
      {required this.G__typename, this.recipe, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateRecipeData_createRecipe', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GCreateRecipeData_createRecipe', 'success');
  }

  @override
  GCreateRecipeData_createRecipe rebuild(
          void Function(GCreateRecipeData_createRecipeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateRecipeData_createRecipeBuilder toBuilder() =>
      new GCreateRecipeData_createRecipeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateRecipeData_createRecipe &&
        G__typename == other.G__typename &&
        recipe == other.recipe &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), recipe.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateRecipeData_createRecipe')
          ..add('G__typename', G__typename)
          ..add('recipe', recipe)
          ..add('success', success))
        .toString();
  }
}

class GCreateRecipeData_createRecipeBuilder
    implements
        Builder<GCreateRecipeData_createRecipe,
            GCreateRecipeData_createRecipeBuilder> {
  _$GCreateRecipeData_createRecipe? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateRecipeData_createRecipe_recipeBuilder? _recipe;
  GCreateRecipeData_createRecipe_recipeBuilder get recipe =>
      _$this._recipe ??= new GCreateRecipeData_createRecipe_recipeBuilder();
  set recipe(GCreateRecipeData_createRecipe_recipeBuilder? recipe) =>
      _$this._recipe = recipe;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GCreateRecipeData_createRecipeBuilder() {
    GCreateRecipeData_createRecipe._initializeBuilder(this);
  }

  GCreateRecipeData_createRecipeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _recipe = $v.recipe?.toBuilder();
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateRecipeData_createRecipe other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateRecipeData_createRecipe;
  }

  @override
  void update(void Function(GCreateRecipeData_createRecipeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateRecipeData_createRecipe build() {
    _$GCreateRecipeData_createRecipe _$result;
    try {
      _$result = _$v ??
          new _$GCreateRecipeData_createRecipe._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateRecipeData_createRecipe', 'G__typename'),
              recipe: _recipe?.build(),
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'GCreateRecipeData_createRecipe', 'success'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recipe';
        _recipe?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateRecipeData_createRecipe', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateRecipeData_createRecipe_recipe
    extends GCreateRecipeData_createRecipe_recipe {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GCreateRecipeData_createRecipe_recipe(
          [void Function(GCreateRecipeData_createRecipe_recipeBuilder)?
              updates]) =>
      (new GCreateRecipeData_createRecipe_recipeBuilder()..update(updates))
          .build();

  _$GCreateRecipeData_createRecipe_recipe._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateRecipeData_createRecipe_recipe', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCreateRecipeData_createRecipe_recipe', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GCreateRecipeData_createRecipe_recipe', 'name');
  }

  @override
  GCreateRecipeData_createRecipe_recipe rebuild(
          void Function(GCreateRecipeData_createRecipe_recipeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateRecipeData_createRecipe_recipeBuilder toBuilder() =>
      new GCreateRecipeData_createRecipe_recipeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateRecipeData_createRecipe_recipe &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateRecipeData_createRecipe_recipe')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GCreateRecipeData_createRecipe_recipeBuilder
    implements
        Builder<GCreateRecipeData_createRecipe_recipe,
            GCreateRecipeData_createRecipe_recipeBuilder> {
  _$GCreateRecipeData_createRecipe_recipe? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GCreateRecipeData_createRecipe_recipeBuilder() {
    GCreateRecipeData_createRecipe_recipe._initializeBuilder(this);
  }

  GCreateRecipeData_createRecipe_recipeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateRecipeData_createRecipe_recipe other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateRecipeData_createRecipe_recipe;
  }

  @override
  void update(
      void Function(GCreateRecipeData_createRecipe_recipeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateRecipeData_createRecipe_recipe build() {
    final _$result = _$v ??
        new _$GCreateRecipeData_createRecipe_recipe._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCreateRecipeData_createRecipe_recipe', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCreateRecipeData_createRecipe_recipe', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GCreateRecipeData_createRecipe_recipe', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
