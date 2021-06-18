// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteAccountData> _$gDeleteAccountDataSerializer =
    new _$GDeleteAccountDataSerializer();
Serializer<GDeleteAccountData_deleteAccount>
    _$gDeleteAccountDataDeleteAccountSerializer =
    new _$GDeleteAccountData_deleteAccountSerializer();

class _$GDeleteAccountDataSerializer
    implements StructuredSerializer<GDeleteAccountData> {
  @override
  final Iterable<Type> types = const [GDeleteAccountData, _$GDeleteAccountData];
  @override
  final String wireName = 'GDeleteAccountData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteAccountData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteAccount',
      serializers.serialize(object.deleteAccount,
          specifiedType: const FullType(GDeleteAccountData_deleteAccount)),
    ];

    return result;
  }

  @override
  GDeleteAccountData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteAccountDataBuilder();

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
        case 'deleteAccount':
          result.deleteAccount.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GDeleteAccountData_deleteAccount))!
              as GDeleteAccountData_deleteAccount);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteAccountData_deleteAccountSerializer
    implements StructuredSerializer<GDeleteAccountData_deleteAccount> {
  @override
  final Iterable<Type> types = const [
    GDeleteAccountData_deleteAccount,
    _$GDeleteAccountData_deleteAccount
  ];
  @override
  final String wireName = 'GDeleteAccountData_deleteAccount';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteAccountData_deleteAccount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GDeleteAccountData_deleteAccount deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteAccountData_deleteAccountBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteAccountData extends GDeleteAccountData {
  @override
  final String G__typename;
  @override
  final GDeleteAccountData_deleteAccount deleteAccount;

  factory _$GDeleteAccountData(
          [void Function(GDeleteAccountDataBuilder)? updates]) =>
      (new GDeleteAccountDataBuilder()..update(updates)).build();

  _$GDeleteAccountData._(
      {required this.G__typename, required this.deleteAccount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeleteAccountData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteAccount, 'GDeleteAccountData', 'deleteAccount');
  }

  @override
  GDeleteAccountData rebuild(
          void Function(GDeleteAccountDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteAccountDataBuilder toBuilder() =>
      new GDeleteAccountDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteAccountData &&
        G__typename == other.G__typename &&
        deleteAccount == other.deleteAccount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), deleteAccount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteAccountData')
          ..add('G__typename', G__typename)
          ..add('deleteAccount', deleteAccount))
        .toString();
  }
}

class GDeleteAccountDataBuilder
    implements Builder<GDeleteAccountData, GDeleteAccountDataBuilder> {
  _$GDeleteAccountData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteAccountData_deleteAccountBuilder? _deleteAccount;
  GDeleteAccountData_deleteAccountBuilder get deleteAccount =>
      _$this._deleteAccount ??= new GDeleteAccountData_deleteAccountBuilder();
  set deleteAccount(GDeleteAccountData_deleteAccountBuilder? deleteAccount) =>
      _$this._deleteAccount = deleteAccount;

  GDeleteAccountDataBuilder() {
    GDeleteAccountData._initializeBuilder(this);
  }

  GDeleteAccountDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteAccount = $v.deleteAccount.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteAccountData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteAccountData;
  }

  @override
  void update(void Function(GDeleteAccountDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteAccountData build() {
    _$GDeleteAccountData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteAccountData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GDeleteAccountData', 'G__typename'),
              deleteAccount: deleteAccount.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteAccount';
        deleteAccount.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDeleteAccountData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteAccountData_deleteAccount
    extends GDeleteAccountData_deleteAccount {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$GDeleteAccountData_deleteAccount(
          [void Function(GDeleteAccountData_deleteAccountBuilder)? updates]) =>
      (new GDeleteAccountData_deleteAccountBuilder()..update(updates)).build();

  _$GDeleteAccountData_deleteAccount._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeleteAccountData_deleteAccount', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GDeleteAccountData_deleteAccount', 'success');
  }

  @override
  GDeleteAccountData_deleteAccount rebuild(
          void Function(GDeleteAccountData_deleteAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteAccountData_deleteAccountBuilder toBuilder() =>
      new GDeleteAccountData_deleteAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteAccountData_deleteAccount &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteAccountData_deleteAccount')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class GDeleteAccountData_deleteAccountBuilder
    implements
        Builder<GDeleteAccountData_deleteAccount,
            GDeleteAccountData_deleteAccountBuilder> {
  _$GDeleteAccountData_deleteAccount? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GDeleteAccountData_deleteAccountBuilder() {
    GDeleteAccountData_deleteAccount._initializeBuilder(this);
  }

  GDeleteAccountData_deleteAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteAccountData_deleteAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteAccountData_deleteAccount;
  }

  @override
  void update(void Function(GDeleteAccountData_deleteAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteAccountData_deleteAccount build() {
    final _$result = _$v ??
        new _$GDeleteAccountData_deleteAccount._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GDeleteAccountData_deleteAccount', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'GDeleteAccountData_deleteAccount', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
