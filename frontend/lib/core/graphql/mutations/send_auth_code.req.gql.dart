// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/mutations/send_auth_code.ast.gql.dart'
    as _i5;
import 'package:cooksoc/core/graphql/mutations/send_auth_code.data.gql.dart'
    as _i2;
import 'package:cooksoc/core/graphql/mutations/send_auth_code.var.gql.dart'
    as _i3;
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'send_auth_code.req.gql.g.dart';

abstract class GSendAuthCodeReq
    implements
        Built<GSendAuthCodeReq, GSendAuthCodeReqBuilder>,
        _i1.OperationRequest<_i2.GSendAuthCodeData, _i3.GSendAuthCodeVars> {
  GSendAuthCodeReq._();

  factory GSendAuthCodeReq([Function(GSendAuthCodeReqBuilder b) updates]) =
      _$GSendAuthCodeReq;

  static void _initializeBuilder(GSendAuthCodeReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'SendAuthCode')
    ..executeOnListen = true;
  _i3.GSendAuthCodeVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GSendAuthCodeData? Function(
      _i2.GSendAuthCodeData?, _i2.GSendAuthCodeData?)? get updateResult;
  _i2.GSendAuthCodeData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GSendAuthCodeData? parseData(Map<String, dynamic> json) =>
      _i2.GSendAuthCodeData.fromJson(json);
  static Serializer<GSendAuthCodeReq> get serializer =>
      _$gSendAuthCodeReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GSendAuthCodeReq.serializer, this)
          as Map<String, dynamic>);
  static GSendAuthCodeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GSendAuthCodeReq.serializer, json);
}
