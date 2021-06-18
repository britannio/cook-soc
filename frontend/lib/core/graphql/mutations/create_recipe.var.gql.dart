// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/schema.schema.gql.dart' as _i1;
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i2;

part 'create_recipe.var.gql.g.dart';

abstract class GCreateRecipeVars
    implements Built<GCreateRecipeVars, GCreateRecipeVarsBuilder> {
  GCreateRecipeVars._();

  factory GCreateRecipeVars([Function(GCreateRecipeVarsBuilder b) updates]) =
      _$GCreateRecipeVars;

  _i1.GRecipeInput get options;
  static Serializer<GCreateRecipeVars> get serializer =>
      _$gCreateRecipeVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCreateRecipeVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateRecipeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCreateRecipeVars.serializer, json);
}
