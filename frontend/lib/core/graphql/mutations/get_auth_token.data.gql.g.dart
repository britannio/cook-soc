// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_auth_token.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAuthTokenData> _$gGetAuthTokenDataSerializer =
    new _$GGetAuthTokenDataSerializer();
Serializer<GGetAuthTokenData_getAuthToken>
    _$gGetAuthTokenDataGetAuthTokenSerializer =
    new _$GGetAuthTokenData_getAuthTokenSerializer();

class _$GGetAuthTokenDataSerializer
    implements StructuredSerializer<GGetAuthTokenData> {
  @override
  final Iterable<Type> types = const [GGetAuthTokenData, _$GGetAuthTokenData];
  @override
  final String wireName = 'GGetAuthTokenData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAuthTokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getAuthToken',
      serializers.serialize(object.getAuthToken,
          specifiedType: const FullType(GGetAuthTokenData_getAuthToken)),
    ];

    return result;
  }

  @override
  GGetAuthTokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAuthTokenDataBuilder();

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
        case 'getAuthToken':
          result.getAuthToken.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetAuthTokenData_getAuthToken))!
              as GGetAuthTokenData_getAuthToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAuthTokenData_getAuthTokenSerializer
    implements StructuredSerializer<GGetAuthTokenData_getAuthToken> {
  @override
  final Iterable<Type> types = const [
    GGetAuthTokenData_getAuthToken,
    _$GGetAuthTokenData_getAuthToken
  ];
  @override
  final String wireName = 'GGetAuthTokenData_getAuthToken';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAuthTokenData_getAuthToken object,
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
    value = object.authToken;
    if (value != null) {
      result
        ..add('authToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetAuthTokenData_getAuthToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAuthTokenData_getAuthTokenBuilder();

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
        case 'authToken':
          result.authToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAuthTokenData extends GGetAuthTokenData {
  @override
  final String G__typename;
  @override
  final GGetAuthTokenData_getAuthToken getAuthToken;

  factory _$GGetAuthTokenData(
          [void Function(GGetAuthTokenDataBuilder)? updates]) =>
      (new GGetAuthTokenDataBuilder()..update(updates)).build();

  _$GGetAuthTokenData._({required this.G__typename, required this.getAuthToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAuthTokenData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getAuthToken, 'GGetAuthTokenData', 'getAuthToken');
  }

  @override
  GGetAuthTokenData rebuild(void Function(GGetAuthTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAuthTokenDataBuilder toBuilder() =>
      new GGetAuthTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAuthTokenData &&
        G__typename == other.G__typename &&
        getAuthToken == other.getAuthToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getAuthToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAuthTokenData')
          ..add('G__typename', G__typename)
          ..add('getAuthToken', getAuthToken))
        .toString();
  }
}

class GGetAuthTokenDataBuilder
    implements Builder<GGetAuthTokenData, GGetAuthTokenDataBuilder> {
  _$GGetAuthTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetAuthTokenData_getAuthTokenBuilder? _getAuthToken;
  GGetAuthTokenData_getAuthTokenBuilder get getAuthToken =>
      _$this._getAuthToken ??= new GGetAuthTokenData_getAuthTokenBuilder();
  set getAuthToken(GGetAuthTokenData_getAuthTokenBuilder? getAuthToken) =>
      _$this._getAuthToken = getAuthToken;

  GGetAuthTokenDataBuilder() {
    GGetAuthTokenData._initializeBuilder(this);
  }

  GGetAuthTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAuthToken = $v.getAuthToken.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAuthTokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAuthTokenData;
  }

  @override
  void update(void Function(GGetAuthTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAuthTokenData build() {
    _$GGetAuthTokenData _$result;
    try {
      _$result = _$v ??
          new _$GGetAuthTokenData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetAuthTokenData', 'G__typename'),
              getAuthToken: getAuthToken.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAuthToken';
        getAuthToken.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetAuthTokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAuthTokenData_getAuthToken extends GGetAuthTokenData_getAuthToken {
  @override
  final String G__typename;
  @override
  final String? authToken;
  @override
  final bool success;
  @override
  final String? errorMessage;

  factory _$GGetAuthTokenData_getAuthToken(
          [void Function(GGetAuthTokenData_getAuthTokenBuilder)? updates]) =>
      (new GGetAuthTokenData_getAuthTokenBuilder()..update(updates)).build();

  _$GGetAuthTokenData_getAuthToken._(
      {required this.G__typename,
      this.authToken,
      required this.success,
      this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAuthTokenData_getAuthToken', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GGetAuthTokenData_getAuthToken', 'success');
  }

  @override
  GGetAuthTokenData_getAuthToken rebuild(
          void Function(GGetAuthTokenData_getAuthTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAuthTokenData_getAuthTokenBuilder toBuilder() =>
      new GGetAuthTokenData_getAuthTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAuthTokenData_getAuthToken &&
        G__typename == other.G__typename &&
        authToken == other.authToken &&
        success == other.success &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), authToken.hashCode),
            success.hashCode),
        errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAuthTokenData_getAuthToken')
          ..add('G__typename', G__typename)
          ..add('authToken', authToken)
          ..add('success', success)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GGetAuthTokenData_getAuthTokenBuilder
    implements
        Builder<GGetAuthTokenData_getAuthToken,
            GGetAuthTokenData_getAuthTokenBuilder> {
  _$GGetAuthTokenData_getAuthToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authToken;
  String? get authToken => _$this._authToken;
  set authToken(String? authToken) => _$this._authToken = authToken;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GGetAuthTokenData_getAuthTokenBuilder() {
    GGetAuthTokenData_getAuthToken._initializeBuilder(this);
  }

  GGetAuthTokenData_getAuthTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authToken = $v.authToken;
      _success = $v.success;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAuthTokenData_getAuthToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAuthTokenData_getAuthToken;
  }

  @override
  void update(void Function(GGetAuthTokenData_getAuthTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAuthTokenData_getAuthToken build() {
    final _$result = _$v ??
        new _$GGetAuthTokenData_getAuthToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetAuthTokenData_getAuthToken', 'G__typename'),
            authToken: authToken,
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'GGetAuthTokenData_getAuthToken', 'success'),
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
