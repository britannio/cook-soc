// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_auth_code.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSendAuthCodeData> _$gSendAuthCodeDataSerializer =
    new _$GSendAuthCodeDataSerializer();
Serializer<GSendAuthCodeData_sendAuthCode>
    _$gSendAuthCodeDataSendAuthCodeSerializer =
    new _$GSendAuthCodeData_sendAuthCodeSerializer();

class _$GSendAuthCodeDataSerializer
    implements StructuredSerializer<GSendAuthCodeData> {
  @override
  final Iterable<Type> types = const [GSendAuthCodeData, _$GSendAuthCodeData];
  @override
  final String wireName = 'GSendAuthCodeData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSendAuthCodeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sendAuthCode',
      serializers.serialize(object.sendAuthCode,
          specifiedType: const FullType(GSendAuthCodeData_sendAuthCode)),
    ];

    return result;
  }

  @override
  GSendAuthCodeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendAuthCodeDataBuilder();

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
        case 'sendAuthCode':
          result.sendAuthCode.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSendAuthCodeData_sendAuthCode))!
              as GSendAuthCodeData_sendAuthCode);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendAuthCodeData_sendAuthCodeSerializer
    implements StructuredSerializer<GSendAuthCodeData_sendAuthCode> {
  @override
  final Iterable<Type> types = const [
    GSendAuthCodeData_sendAuthCode,
    _$GSendAuthCodeData_sendAuthCode
  ];
  @override
  final String wireName = 'GSendAuthCodeData_sendAuthCode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendAuthCodeData_sendAuthCode object,
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
  GSendAuthCodeData_sendAuthCode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendAuthCodeData_sendAuthCodeBuilder();

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
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$GSendAuthCodeData extends GSendAuthCodeData {
  @override
  final String G__typename;
  @override
  final GSendAuthCodeData_sendAuthCode sendAuthCode;

  factory _$GSendAuthCodeData(
          [void Function(GSendAuthCodeDataBuilder)? updates]) =>
      (new GSendAuthCodeDataBuilder()..update(updates)).build();

  _$GSendAuthCodeData._({required this.G__typename, required this.sendAuthCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSendAuthCodeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        sendAuthCode, 'GSendAuthCodeData', 'sendAuthCode');
  }

  @override
  GSendAuthCodeData rebuild(void Function(GSendAuthCodeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendAuthCodeDataBuilder toBuilder() =>
      new GSendAuthCodeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendAuthCodeData &&
        G__typename == other.G__typename &&
        sendAuthCode == other.sendAuthCode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), sendAuthCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSendAuthCodeData')
          ..add('G__typename', G__typename)
          ..add('sendAuthCode', sendAuthCode))
        .toString();
  }
}

class GSendAuthCodeDataBuilder
    implements Builder<GSendAuthCodeData, GSendAuthCodeDataBuilder> {
  _$GSendAuthCodeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSendAuthCodeData_sendAuthCodeBuilder? _sendAuthCode;
  GSendAuthCodeData_sendAuthCodeBuilder get sendAuthCode =>
      _$this._sendAuthCode ??= new GSendAuthCodeData_sendAuthCodeBuilder();
  set sendAuthCode(GSendAuthCodeData_sendAuthCodeBuilder? sendAuthCode) =>
      _$this._sendAuthCode = sendAuthCode;

  GSendAuthCodeDataBuilder() {
    GSendAuthCodeData._initializeBuilder(this);
  }

  GSendAuthCodeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendAuthCode = $v.sendAuthCode.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendAuthCodeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendAuthCodeData;
  }

  @override
  void update(void Function(GSendAuthCodeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSendAuthCodeData build() {
    _$GSendAuthCodeData _$result;
    try {
      _$result = _$v ??
          new _$GSendAuthCodeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GSendAuthCodeData', 'G__typename'),
              sendAuthCode: sendAuthCode.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendAuthCode';
        sendAuthCode.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSendAuthCodeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendAuthCodeData_sendAuthCode extends GSendAuthCodeData_sendAuthCode {
  @override
  final String G__typename;
  @override
  final String? errorMessage;
  @override
  final bool success;

  factory _$GSendAuthCodeData_sendAuthCode(
          [void Function(GSendAuthCodeData_sendAuthCodeBuilder)? updates]) =>
      (new GSendAuthCodeData_sendAuthCodeBuilder()..update(updates)).build();

  _$GSendAuthCodeData_sendAuthCode._(
      {required this.G__typename, this.errorMessage, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSendAuthCodeData_sendAuthCode', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GSendAuthCodeData_sendAuthCode', 'success');
  }

  @override
  GSendAuthCodeData_sendAuthCode rebuild(
          void Function(GSendAuthCodeData_sendAuthCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendAuthCodeData_sendAuthCodeBuilder toBuilder() =>
      new GSendAuthCodeData_sendAuthCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendAuthCodeData_sendAuthCode &&
        G__typename == other.G__typename &&
        errorMessage == other.errorMessage &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), errorMessage.hashCode),
        success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSendAuthCodeData_sendAuthCode')
          ..add('G__typename', G__typename)
          ..add('errorMessage', errorMessage)
          ..add('success', success))
        .toString();
  }
}

class GSendAuthCodeData_sendAuthCodeBuilder
    implements
        Builder<GSendAuthCodeData_sendAuthCode,
            GSendAuthCodeData_sendAuthCodeBuilder> {
  _$GSendAuthCodeData_sendAuthCode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GSendAuthCodeData_sendAuthCodeBuilder() {
    GSendAuthCodeData_sendAuthCode._initializeBuilder(this);
  }

  GSendAuthCodeData_sendAuthCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _errorMessage = $v.errorMessage;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendAuthCodeData_sendAuthCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendAuthCodeData_sendAuthCode;
  }

  @override
  void update(void Function(GSendAuthCodeData_sendAuthCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSendAuthCodeData_sendAuthCode build() {
    final _$result = _$v ??
        new _$GSendAuthCodeData_sendAuthCode._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GSendAuthCodeData_sendAuthCode', 'G__typename'),
            errorMessage: errorMessage,
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'GSendAuthCodeData_sendAuthCode', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
