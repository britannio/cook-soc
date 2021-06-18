// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_auth_token.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAuthTokenVars> _$gGetAuthTokenVarsSerializer =
    new _$GGetAuthTokenVarsSerializer();

class _$GGetAuthTokenVarsSerializer
    implements StructuredSerializer<GGetAuthTokenVars> {
  @override
  final Iterable<Type> types = const [GGetAuthTokenVars, _$GGetAuthTokenVars];
  @override
  final String wireName = 'GGetAuthTokenVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAuthTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetAuthTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAuthTokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAuthTokenVars extends GGetAuthTokenVars {
  @override
  final String email;
  @override
  final String code;

  factory _$GGetAuthTokenVars(
          [void Function(GGetAuthTokenVarsBuilder)? updates]) =>
      (new GGetAuthTokenVarsBuilder()..update(updates)).build();

  _$GGetAuthTokenVars._({required this.email, required this.code}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'GGetAuthTokenVars', 'email');
    BuiltValueNullFieldError.checkNotNull(code, 'GGetAuthTokenVars', 'code');
  }

  @override
  GGetAuthTokenVars rebuild(void Function(GGetAuthTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAuthTokenVarsBuilder toBuilder() =>
      new GGetAuthTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAuthTokenVars &&
        email == other.email &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAuthTokenVars')
          ..add('email', email)
          ..add('code', code))
        .toString();
  }
}

class GGetAuthTokenVarsBuilder
    implements Builder<GGetAuthTokenVars, GGetAuthTokenVarsBuilder> {
  _$GGetAuthTokenVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GGetAuthTokenVarsBuilder();

  GGetAuthTokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAuthTokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAuthTokenVars;
  }

  @override
  void update(void Function(GGetAuthTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAuthTokenVars build() {
    final _$result = _$v ??
        new _$GGetAuthTokenVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GGetAuthTokenVars', 'email'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'GGetAuthTokenVars', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
