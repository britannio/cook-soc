// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i1;

part 'get_auth_token.data.gql.g.dart';

abstract class GGetAuthTokenData
    implements Built<GGetAuthTokenData, GGetAuthTokenDataBuilder> {
  GGetAuthTokenData._();

  factory GGetAuthTokenData([Function(GGetAuthTokenDataBuilder b) updates]) =
      _$GGetAuthTokenData;

  static void _initializeBuilder(GGetAuthTokenDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetAuthTokenData_getAuthToken get getAuthToken;
  static Serializer<GGetAuthTokenData> get serializer =>
      _$gGetAuthTokenDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAuthTokenData.serializer, this)
          as Map<String, dynamic>);
  static GGetAuthTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetAuthTokenData.serializer, json);
}

abstract class GGetAuthTokenData_getAuthToken
    implements
        Built<GGetAuthTokenData_getAuthToken,
            GGetAuthTokenData_getAuthTokenBuilder> {
  GGetAuthTokenData_getAuthToken._();

  factory GGetAuthTokenData_getAuthToken(
          [Function(GGetAuthTokenData_getAuthTokenBuilder b) updates]) =
      _$GGetAuthTokenData_getAuthToken;

  static void _initializeBuilder(GGetAuthTokenData_getAuthTokenBuilder b) =>
      b..G__typename = 'AuthTokenResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get authToken;
  bool get success;
  String? get errorMessage;
  static Serializer<GGetAuthTokenData_getAuthToken> get serializer =>
      _$gGetAuthTokenDataGetAuthTokenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetAuthTokenData_getAuthToken.serializer, this) as Map<String, dynamic>);
  static GGetAuthTokenData_getAuthToken? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetAuthTokenData_getAuthToken.serializer, json);
}
