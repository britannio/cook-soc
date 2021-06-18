// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteAccountVars> _$gDeleteAccountVarsSerializer =
    new _$GDeleteAccountVarsSerializer();

class _$GDeleteAccountVarsSerializer
    implements StructuredSerializer<GDeleteAccountVars> {
  @override
  final Iterable<Type> types = const [GDeleteAccountVars, _$GDeleteAccountVars];
  @override
  final String wireName = 'GDeleteAccountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteAccountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GDeleteAccountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GDeleteAccountVarsBuilder().build();
  }
}

class _$GDeleteAccountVars extends GDeleteAccountVars {
  factory _$GDeleteAccountVars(
          [void Function(GDeleteAccountVarsBuilder)? updates]) =>
      (new GDeleteAccountVarsBuilder()..update(updates)).build();

  _$GDeleteAccountVars._() : super._();

  @override
  GDeleteAccountVars rebuild(
          void Function(GDeleteAccountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteAccountVarsBuilder toBuilder() =>
      new GDeleteAccountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteAccountVars;
  }

  @override
  int get hashCode {
    return 990407865;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GDeleteAccountVars').toString();
  }
}

class GDeleteAccountVarsBuilder
    implements Builder<GDeleteAccountVars, GDeleteAccountVarsBuilder> {
  _$GDeleteAccountVars? _$v;

  GDeleteAccountVarsBuilder();

  @override
  void replace(GDeleteAccountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteAccountVars;
  }

  @override
  void update(void Function(GDeleteAccountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteAccountVars build() {
    final _$result = _$v ?? new _$GDeleteAccountVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
