// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GHelloVars> _$gHelloVarsSerializer = new _$GHelloVarsSerializer();

class _$GHelloVarsSerializer implements StructuredSerializer<GHelloVars> {
  @override
  final Iterable<Type> types = const [GHelloVars, _$GHelloVars];
  @override
  final String wireName = 'GHelloVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GHelloVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GHelloVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GHelloVarsBuilder().build();
  }
}

class _$GHelloVars extends GHelloVars {
  factory _$GHelloVars([void Function(GHelloVarsBuilder)? updates]) =>
      (new GHelloVarsBuilder()..update(updates)).build();

  _$GHelloVars._() : super._();

  @override
  GHelloVars rebuild(void Function(GHelloVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHelloVarsBuilder toBuilder() => new GHelloVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHelloVars;
  }

  @override
  int get hashCode {
    return 421694076;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GHelloVars').toString();
  }
}

class GHelloVarsBuilder implements Builder<GHelloVars, GHelloVarsBuilder> {
  _$GHelloVars? _$v;

  GHelloVarsBuilder();

  @override
  void replace(GHelloVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHelloVars;
  }

  @override
  void update(void Function(GHelloVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHelloVars build() {
    final _$result = _$v ?? new _$GHelloVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
