// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/mutations/delete_account.ast.gql.dart'
    as _i5;
import 'package:cooksoc/core/graphql/mutations/delete_account.data.gql.dart'
    as _i2;
import 'package:cooksoc/core/graphql/mutations/delete_account.var.gql.dart'
    as _i3;
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'delete_account.req.gql.g.dart';

abstract class GDeleteAccountReq
    implements
        Built<GDeleteAccountReq, GDeleteAccountReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteAccountData, _i3.GDeleteAccountVars> {
  GDeleteAccountReq._();

  factory GDeleteAccountReq([Function(GDeleteAccountReqBuilder b) updates]) =
      _$GDeleteAccountReq;

  static void _initializeBuilder(GDeleteAccountReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'DeleteAccount')
    ..executeOnListen = true;
  _i3.GDeleteAccountVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GDeleteAccountData? Function(
      _i2.GDeleteAccountData?, _i2.GDeleteAccountData?)? get updateResult;
  _i2.GDeleteAccountData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GDeleteAccountData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteAccountData.fromJson(json);
  static Serializer<GDeleteAccountReq> get serializer =>
      _$gDeleteAccountReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GDeleteAccountReq.serializer, this)
          as Map<String, dynamic>);
  static GDeleteAccountReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GDeleteAccountReq.serializer, json);
}
