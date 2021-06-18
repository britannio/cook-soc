// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/queries/hello.ast.gql.dart' as _i5;
import 'package:cooksoc/core/graphql/queries/hello.data.gql.dart' as _i2;
import 'package:cooksoc/core/graphql/queries/hello.var.gql.dart' as _i3;
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'hello.req.gql.g.dart';

abstract class GHelloReq
    implements
        Built<GHelloReq, GHelloReqBuilder>,
        _i1.OperationRequest<_i2.GHelloData, _i3.GHelloVars> {
  GHelloReq._();

  factory GHelloReq([Function(GHelloReqBuilder b) updates]) = _$GHelloReq;

  static void _initializeBuilder(GHelloReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'Hello')
    ..executeOnListen = true;
  _i3.GHelloVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GHelloData? Function(_i2.GHelloData?, _i2.GHelloData?)? get updateResult;
  _i2.GHelloData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GHelloData? parseData(Map<String, dynamic> json) =>
      _i2.GHelloData.fromJson(json);
  static Serializer<GHelloReq> get serializer => _$gHelloReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GHelloReq.serializer, this)
          as Map<String, dynamic>);
  static GHelloReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GHelloReq.serializer, json);
}
