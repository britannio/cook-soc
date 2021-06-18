// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i1;

part 'create_recipe.data.gql.g.dart';

abstract class GCreateRecipeData
    implements Built<GCreateRecipeData, GCreateRecipeDataBuilder> {
  GCreateRecipeData._();

  factory GCreateRecipeData([Function(GCreateRecipeDataBuilder b) updates]) =
      _$GCreateRecipeData;

  static void _initializeBuilder(GCreateRecipeDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateRecipeData_createRecipe get createRecipe;
  static Serializer<GCreateRecipeData> get serializer =>
      _$gCreateRecipeDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateRecipeData.serializer, this)
          as Map<String, dynamic>);
  static GCreateRecipeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateRecipeData.serializer, json);
}

abstract class GCreateRecipeData_createRecipe
    implements
        Built<GCreateRecipeData_createRecipe,
            GCreateRecipeData_createRecipeBuilder> {
  GCreateRecipeData_createRecipe._();

  factory GCreateRecipeData_createRecipe(
          [Function(GCreateRecipeData_createRecipeBuilder b) updates]) =
      _$GCreateRecipeData_createRecipe;

  static void _initializeBuilder(GCreateRecipeData_createRecipeBuilder b) =>
      b..G__typename = 'CreateRecipeResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateRecipeData_createRecipe_recipe? get recipe;
  bool get success;
  static Serializer<GCreateRecipeData_createRecipe> get serializer =>
      _$gCreateRecipeDataCreateRecipeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCreateRecipeData_createRecipe.serializer, this) as Map<String, dynamic>);
  static GCreateRecipeData_createRecipe? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateRecipeData_createRecipe.serializer, json);
}

abstract class GCreateRecipeData_createRecipe_recipe
    implements
        Built<GCreateRecipeData_createRecipe_recipe,
            GCreateRecipeData_createRecipe_recipeBuilder> {
  GCreateRecipeData_createRecipe_recipe._();

  factory GCreateRecipeData_createRecipe_recipe(
          [Function(GCreateRecipeData_createRecipe_recipeBuilder b) updates]) =
      _$GCreateRecipeData_createRecipe_recipe;

  static void _initializeBuilder(
          GCreateRecipeData_createRecipe_recipeBuilder b) =>
      b..G__typename = 'Recipe';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCreateRecipeData_createRecipe_recipe> get serializer =>
      _$gCreateRecipeDataCreateRecipeRecipeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCreateRecipeData_createRecipe_recipe.serializer, this)
      as Map<String, dynamic>);
  static GCreateRecipeData_createRecipe_recipe? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateRecipeData_createRecipe_recipe.serializer, json);
}
