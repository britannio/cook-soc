// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_recipe.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateRecipeVars> _$gCreateRecipeVarsSerializer =
    new _$GCreateRecipeVarsSerializer();

class _$GCreateRecipeVarsSerializer
    implements StructuredSerializer<GCreateRecipeVars> {
  @override
  final Iterable<Type> types = const [GCreateRecipeVars, _$GCreateRecipeVars];
  @override
  final String wireName = 'GCreateRecipeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateRecipeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'options',
      serializers.serialize(object.options,
          specifiedType: const FullType(_i1.GRecipeInput)),
    ];

    return result;
  }

  @override
  GCreateRecipeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateRecipeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GRecipeInput))!
              as _i1.GRecipeInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateRecipeVars extends GCreateRecipeVars {
  @override
  final _i1.GRecipeInput options;

  factory _$GCreateRecipeVars(
          [void Function(GCreateRecipeVarsBuilder)? updates]) =>
      (new GCreateRecipeVarsBuilder()..update(updates)).build();

  _$GCreateRecipeVars._({required this.options}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        options, 'GCreateRecipeVars', 'options');
  }

  @override
  GCreateRecipeVars rebuild(void Function(GCreateRecipeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateRecipeVarsBuilder toBuilder() =>
      new GCreateRecipeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateRecipeVars && options == other.options;
  }

  @override
  int get hashCode {
    return $jf($jc(0, options.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateRecipeVars')
          ..add('options', options))
        .toString();
  }
}

class GCreateRecipeVarsBuilder
    implements Builder<GCreateRecipeVars, GCreateRecipeVarsBuilder> {
  _$GCreateRecipeVars? _$v;

  _i1.GRecipeInputBuilder? _options;
  _i1.GRecipeInputBuilder get options =>
      _$this._options ??= new _i1.GRecipeInputBuilder();
  set options(_i1.GRecipeInputBuilder? options) => _$this._options = options;

  GCreateRecipeVarsBuilder();

  GCreateRecipeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _options = $v.options.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateRecipeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateRecipeVars;
  }

  @override
  void update(void Function(GCreateRecipeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateRecipeVars build() {
    _$GCreateRecipeVars _$result;
    try {
      _$result = _$v ?? new _$GCreateRecipeVars._(options: options.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateRecipeVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
