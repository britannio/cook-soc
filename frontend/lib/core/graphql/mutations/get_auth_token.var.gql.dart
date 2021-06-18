// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i1;

part 'get_auth_token.var.gql.g.dart';

abstract class GGetAuthTokenVars
    implements Built<GGetAuthTokenVars, GGetAuthTokenVarsBuilder> {
  GGetAuthTokenVars._();

  factory GGetAuthTokenVars([Function(GGetAuthTokenVarsBuilder b) updates]) =
      _$GGetAuthTokenVars;

  String get email;
  String get code;
  static Serializer<GGetAuthTokenVars> get serializer =>
      _$gGetAuthTokenVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAuthTokenVars.serializer, this)
          as Map<String, dynamic>);
  static GGetAuthTokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetAuthTokenVars.serializer, json);
}
