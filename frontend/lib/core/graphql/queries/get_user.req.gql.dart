// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/queries/get_user.ast.gql.dart' as _i5;
import 'package:cooksoc/core/graphql/queries/get_user.data.gql.dart' as _i2;
import 'package:cooksoc/core/graphql/queries/get_user.var.gql.dart' as _i3;
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_user.req.gql.g.dart';

abstract class GGetUserReq
    implements
        Built<GGetUserReq, GGetUserReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserData, _i3.GGetUserVars> {
  GGetUserReq._();

  factory GGetUserReq([Function(GGetUserReqBuilder b) updates]) = _$GGetUserReq;

  static void _initializeBuilder(GGetUserReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetUser')
    ..executeOnListen = true;
  _i3.GGetUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetUserData? Function(_i2.GGetUserData?, _i2.GGetUserData?)?
      get updateResult;
  _i2.GGetUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetUserData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserData.fromJson(json);
  static Serializer<GGetUserReq> get serializer => _$gGetUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetUserReq.serializer, this)
          as Map<String, dynamic>);
  static GGetUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetUserReq.serializer, json);
}
