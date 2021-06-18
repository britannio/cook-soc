// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserVars> _$gGetUserVarsSerializer =
    new _$GGetUserVarsSerializer();

class _$GGetUserVarsSerializer implements StructuredSerializer<GGetUserVars> {
  @override
  final Iterable<Type> types = const [GGetUserVars, _$GGetUserVars];
  @override
  final String wireName = 'GGetUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetUserVarsBuilder().build();
  }
}

class _$GGetUserVars extends GGetUserVars {
  factory _$GGetUserVars([void Function(GGetUserVarsBuilder)? updates]) =>
      (new GGetUserVarsBuilder()..update(updates)).build();

  _$GGetUserVars._() : super._();

  @override
  GGetUserVars rebuild(void Function(GGetUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserVarsBuilder toBuilder() => new GGetUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserVars;
  }

  @override
  int get hashCode {
    return 411103074;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetUserVars').toString();
  }
}

class GGetUserVarsBuilder
    implements Builder<GGetUserVars, GGetUserVarsBuilder> {
  _$GGetUserVars? _$v;

  GGetUserVarsBuilder();

  @override
  void replace(GGetUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserVars;
  }

  @override
  void update(void Function(GGetUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserVars build() {
    final _$result = _$v ?? new _$GGetUserVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
