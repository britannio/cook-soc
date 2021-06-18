// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i2;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GRecipeInput
    implements Built<GRecipeInput, GRecipeInputBuilder> {
  GRecipeInput._();

  factory GRecipeInput([Function(GRecipeInputBuilder b) updates]) =
      _$GRecipeInput;

  String get name;
  String get ingredients;
  String get instructions;
  String get info;
  static Serializer<GRecipeInput> get serializer => _$gRecipeInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GRecipeInput.serializer, this)
          as Map<String, dynamic>);
  static GRecipeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GRecipeInput.serializer, json);
}
