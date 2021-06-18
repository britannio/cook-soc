// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_auth_code.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSendAuthCodeVars> _$gSendAuthCodeVarsSerializer =
    new _$GSendAuthCodeVarsSerializer();

class _$GSendAuthCodeVarsSerializer
    implements StructuredSerializer<GSendAuthCodeVars> {
  @override
  final Iterable<Type> types = const [GSendAuthCodeVars, _$GSendAuthCodeVars];
  @override
  final String wireName = 'GSendAuthCodeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSendAuthCodeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSendAuthCodeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendAuthCodeVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSendAuthCodeVars extends GSendAuthCodeVars {
  @override
  final String email;

  factory _$GSendAuthCodeVars(
          [void Function(GSendAuthCodeVarsBuilder)? updates]) =>
      (new GSendAuthCodeVarsBuilder()..update(updates)).build();

  _$GSendAuthCodeVars._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'GSendAuthCodeVars', 'email');
  }

  @override
  GSendAuthCodeVars rebuild(void Function(GSendAuthCodeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendAuthCodeVarsBuilder toBuilder() =>
      new GSendAuthCodeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendAuthCodeVars && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(0, email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSendAuthCodeVars')
          ..add('email', email))
        .toString();
  }
}

class GSendAuthCodeVarsBuilder
    implements Builder<GSendAuthCodeVars, GSendAuthCodeVarsBuilder> {
  _$GSendAuthCodeVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GSendAuthCodeVarsBuilder();

  GSendAuthCodeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendAuthCodeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendAuthCodeVars;
  }

  @override
  void update(void Function(GSendAuthCodeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSendAuthCodeVars build() {
    final _$result = _$v ??
        new _$GSendAuthCodeVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GSendAuthCodeVars', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
