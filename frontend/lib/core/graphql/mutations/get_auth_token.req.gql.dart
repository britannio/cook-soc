// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/mutations/get_auth_token.ast.gql.dart'
    as _i5;
import 'package:cooksoc/core/graphql/mutations/get_auth_token.data.gql.dart'
    as _i2;
import 'package:cooksoc/core/graphql/mutations/get_auth_token.var.gql.dart'
    as _i3;
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_auth_token.req.gql.g.dart';

abstract class GGetAuthTokenReq
    implements
        Built<GGetAuthTokenReq, GGetAuthTokenReqBuilder>,
        _i1.OperationRequest<_i2.GGetAuthTokenData, _i3.GGetAuthTokenVars> {
  GGetAuthTokenReq._();

  factory GGetAuthTokenReq([Function(GGetAuthTokenReqBuilder b) updates]) =
      _$GGetAuthTokenReq;

  static void _initializeBuilder(GGetAuthTokenReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetAuthToken')
    ..executeOnListen = true;
  _i3.GGetAuthTokenVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetAuthTokenData? Function(
      _i2.GGetAuthTokenData?, _i2.GGetAuthTokenData?)? get updateResult;
  _i2.GGetAuthTokenData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetAuthTokenData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAuthTokenData.fromJson(json);
  static Serializer<GGetAuthTokenReq> get serializer =>
      _$gGetAuthTokenReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetAuthTokenReq.serializer, this)
          as Map<String, dynamic>);
  static GGetAuthTokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetAuthTokenReq.serializer, json);
}
