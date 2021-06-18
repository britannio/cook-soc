// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserData> _$gGetUserDataSerializer =
    new _$GGetUserDataSerializer();
Serializer<GGetUserData_getUser> _$gGetUserDataGetUserSerializer =
    new _$GGetUserData_getUserSerializer();
Serializer<GGetUserData_getUser_user> _$gGetUserDataGetUserUserSerializer =
    new _$GGetUserData_getUser_userSerializer();

class _$GGetUserDataSerializer implements StructuredSerializer<GGetUserData> {
  @override
  final Iterable<Type> types = const [GGetUserData, _$GGetUserData];
  @override
  final String wireName = 'GGetUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getUser',
      serializers.serialize(object.getUser,
          specifiedType: const FullType(GGetUserData_getUser)),
    ];

    return result;
  }

  @override
  GGetUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserDataBuilder();

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
        case 'getUser':
          result.getUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetUserData_getUser))!
              as GGetUserData_getUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserData_getUserSerializer
    implements StructuredSerializer<GGetUserData_getUser> {
  @override
  final Iterable<Type> types = const [
    GGetUserData_getUser,
    _$GGetUserData_getUser
  ];
  @override
  final String wireName = 'GGetUserData_getUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserData_getUser object,
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
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetUserData_getUser_user)));
    }
    return result;
  }

  @override
  GGetUserData_getUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserData_getUserBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetUserData_getUser_user))!
              as GGetUserData_getUser_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserData_getUser_userSerializer
    implements StructuredSerializer<GGetUserData_getUser_user> {
  @override
  final Iterable<Type> types = const [
    GGetUserData_getUser_user,
    _$GGetUserData_getUser_user
  ];
  @override
  final String wireName = 'GGetUserData_getUser_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserData_getUser_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'isComittee',
      serializers.serialize(object.isComittee,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GGetUserData_getUser_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserData_getUser_userBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'isComittee':
          result.isComittee = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserData extends GGetUserData {
  @override
  final String G__typename;
  @override
  final GGetUserData_getUser getUser;

  factory _$GGetUserData([void Function(GGetUserDataBuilder)? updates]) =>
      (new GGetUserDataBuilder()..update(updates)).build();

  _$GGetUserData._({required this.G__typename, required this.getUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getUser, 'GGetUserData', 'getUser');
  }

  @override
  GGetUserData rebuild(void Function(GGetUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserDataBuilder toBuilder() => new GGetUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserData &&
        G__typename == other.G__typename &&
        getUser == other.getUser;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserData')
          ..add('G__typename', G__typename)
          ..add('getUser', getUser))
        .toString();
  }
}

class GGetUserDataBuilder
    implements Builder<GGetUserData, GGetUserDataBuilder> {
  _$GGetUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserData_getUserBuilder? _getUser;
  GGetUserData_getUserBuilder get getUser =>
      _$this._getUser ??= new GGetUserData_getUserBuilder();
  set getUser(GGetUserData_getUserBuilder? getUser) =>
      _$this._getUser = getUser;

  GGetUserDataBuilder() {
    GGetUserData._initializeBuilder(this);
  }

  GGetUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getUser = $v.getUser.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserData;
  }

  @override
  void update(void Function(GGetUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserData build() {
    _$GGetUserData _$result;
    try {
      _$result = _$v ??
          new _$GGetUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserData', 'G__typename'),
              getUser: getUser.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getUser';
        getUser.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserData_getUser extends GGetUserData_getUser {
  @override
  final String G__typename;
  @override
  final bool success;
  @override
  final GGetUserData_getUser_user? user;

  factory _$GGetUserData_getUser(
          [void Function(GGetUserData_getUserBuilder)? updates]) =>
      (new GGetUserData_getUserBuilder()..update(updates)).build();

  _$GGetUserData_getUser._(
      {required this.G__typename, required this.success, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserData_getUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, 'GGetUserData_getUser', 'success');
  }

  @override
  GGetUserData_getUser rebuild(
          void Function(GGetUserData_getUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserData_getUserBuilder toBuilder() =>
      new GGetUserData_getUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserData_getUser &&
        G__typename == other.G__typename &&
        success == other.success &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), success.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserData_getUser')
          ..add('G__typename', G__typename)
          ..add('success', success)
          ..add('user', user))
        .toString();
  }
}

class GGetUserData_getUserBuilder
    implements Builder<GGetUserData_getUser, GGetUserData_getUserBuilder> {
  _$GGetUserData_getUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GGetUserData_getUser_userBuilder? _user;
  GGetUserData_getUser_userBuilder get user =>
      _$this._user ??= new GGetUserData_getUser_userBuilder();
  set user(GGetUserData_getUser_userBuilder? user) => _$this._user = user;

  GGetUserData_getUserBuilder() {
    GGetUserData_getUser._initializeBuilder(this);
  }

  GGetUserData_getUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserData_getUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserData_getUser;
  }

  @override
  void update(void Function(GGetUserData_getUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserData_getUser build() {
    _$GGetUserData_getUser _$result;
    try {
      _$result = _$v ??
          new _$GGetUserData_getUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserData_getUser', 'G__typename'),
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'GGetUserData_getUser', 'success'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserData_getUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserData_getUser_user extends GGetUserData_getUser_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final _i2.GDateTime createdAt;
  @override
  final bool isComittee;

  factory _$GGetUserData_getUser_user(
          [void Function(GGetUserData_getUser_userBuilder)? updates]) =>
      (new GGetUserData_getUser_userBuilder()..update(updates)).build();

  _$GGetUserData_getUser_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.email,
      required this.createdAt,
      required this.isComittee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserData_getUser_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetUserData_getUser_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetUserData_getUser_user', 'name');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GGetUserData_getUser_user', 'email');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GGetUserData_getUser_user', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        isComittee, 'GGetUserData_getUser_user', 'isComittee');
  }

  @override
  GGetUserData_getUser_user rebuild(
          void Function(GGetUserData_getUser_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserData_getUser_userBuilder toBuilder() =>
      new GGetUserData_getUser_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserData_getUser_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        createdAt == other.createdAt &&
        isComittee == other.isComittee;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    name.hashCode),
                email.hashCode),
            createdAt.hashCode),
        isComittee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserData_getUser_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('createdAt', createdAt)
          ..add('isComittee', isComittee))
        .toString();
  }
}

class GGetUserData_getUser_userBuilder
    implements
        Builder<GGetUserData_getUser_user, GGetUserData_getUser_userBuilder> {
  _$GGetUserData_getUser_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  bool? _isComittee;
  bool? get isComittee => _$this._isComittee;
  set isComittee(bool? isComittee) => _$this._isComittee = isComittee;

  GGetUserData_getUser_userBuilder() {
    GGetUserData_getUser_user._initializeBuilder(this);
  }

  GGetUserData_getUser_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _createdAt = $v.createdAt.toBuilder();
      _isComittee = $v.isComittee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserData_getUser_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserData_getUser_user;
  }

  @override
  void update(void Function(GGetUserData_getUser_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserData_getUser_user build() {
    _$GGetUserData_getUser_user _$result;
    try {
      _$result = _$v ??
          new _$GGetUserData_getUser_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserData_getUser_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetUserData_getUser_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetUserData_getUser_user', 'name'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'GGetUserData_getUser_user', 'email'),
              createdAt: createdAt.build(),
              isComittee: BuiltValueNullFieldError.checkNotNull(
                  isComittee, 'GGetUserData_getUser_user', 'isComittee'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserData_getUser_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
