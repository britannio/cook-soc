// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i1;

part 'hello.var.gql.g.dart';

abstract class GHelloVars implements Built<GHelloVars, GHelloVarsBuilder> {
  GHelloVars._();

  factory GHelloVars([Function(GHelloVarsBuilder b) updates]) = _$GHelloVars;

  static Serializer<GHelloVars> get serializer => _$gHelloVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GHelloVars.serializer, this)
          as Map<String, dynamic>);
  static GHelloVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GHelloVars.serializer, json);
}
