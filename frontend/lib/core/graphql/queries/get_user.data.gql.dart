// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/schema.schema.gql.dart' as _i2;
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i1;

part 'get_user.data.gql.g.dart';

abstract class GGetUserData
    implements Built<GGetUserData, GGetUserDataBuilder> {
  GGetUserData._();

  factory GGetUserData([Function(GGetUserDataBuilder b) updates]) =
      _$GGetUserData;

  static void _initializeBuilder(GGetUserDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserData_getUser get getUser;
  static Serializer<GGetUserData> get serializer => _$gGetUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserData.serializer, this)
          as Map<String, dynamic>);
  static GGetUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserData.serializer, json);
}

abstract class GGetUserData_getUser
    implements Built<GGetUserData_getUser, GGetUserData_getUserBuilder> {
  GGetUserData_getUser._();

  factory GGetUserData_getUser(
          [Function(GGetUserData_getUserBuilder b) updates]) =
      _$GGetUserData_getUser;

  static void _initializeBuilder(GGetUserData_getUserBuilder b) =>
      b..G__typename = 'UserResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  GGetUserData_getUser_user? get user;
  static Serializer<GGetUserData_getUser> get serializer =>
      _$gGetUserDataGetUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserData_getUser.serializer, this)
          as Map<String, dynamic>);
  static GGetUserData_getUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserData_getUser.serializer, json);
}

abstract class GGetUserData_getUser_user
    implements
        Built<GGetUserData_getUser_user, GGetUserData_getUser_userBuilder> {
  GGetUserData_getUser_user._();

  factory GGetUserData_getUser_user(
          [Function(GGetUserData_getUser_userBuilder b) updates]) =
      _$GGetUserData_getUser_user;

  static void _initializeBuilder(GGetUserData_getUser_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get email;
  _i2.GDateTime get createdAt;
  bool get isComittee;
  static Serializer<GGetUserData_getUser_user> get serializer =>
      _$gGetUserDataGetUserUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserData_getUser_user.serializer, this)
          as Map<String, dynamic>);
  static GGetUserData_getUser_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetUserData_getUser_user.serializer, json);
}
