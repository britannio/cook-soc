// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/mutations/create_recipe.ast.gql.dart'
    as _i5;
import 'package:cooksoc/core/graphql/mutations/create_recipe.data.gql.dart'
    as _i2;
import 'package:cooksoc/core/graphql/mutations/create_recipe.var.gql.dart'
    as _i3;
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'create_recipe.req.gql.g.dart';

abstract class GCreateRecipeReq
    implements
        Built<GCreateRecipeReq, GCreateRecipeReqBuilder>,
        _i1.OperationRequest<_i2.GCreateRecipeData, _i3.GCreateRecipeVars> {
  GCreateRecipeReq._();

  factory GCreateRecipeReq([Function(GCreateRecipeReqBuilder b) updates]) =
      _$GCreateRecipeReq;

  static void _initializeBuilder(GCreateRecipeReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CreateRecipe')
    ..executeOnListen = true;
  _i3.GCreateRecipeVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateRecipeData? Function(
      _i2.GCreateRecipeData?, _i2.GCreateRecipeData?)? get updateResult;
  _i2.GCreateRecipeData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateRecipeData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateRecipeData.fromJson(json);
  static Serializer<GCreateRecipeReq> get serializer =>
      _$gCreateRecipeReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateRecipeReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateRecipeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreateRecipeReq.serializer, json);
}
