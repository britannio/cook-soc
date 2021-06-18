// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i1;

part 'send_auth_code.var.gql.g.dart';

abstract class GSendAuthCodeVars
    implements Built<GSendAuthCodeVars, GSendAuthCodeVarsBuilder> {
  GSendAuthCodeVars._();

  factory GSendAuthCodeVars([Function(GSendAuthCodeVarsBuilder b) updates]) =
      _$GSendAuthCodeVars;

  String get email;
  static Serializer<GSendAuthCodeVars> get serializer =>
      _$gSendAuthCodeVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSendAuthCodeVars.serializer, this)
          as Map<String, dynamic>);
  static GSendAuthCodeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSendAuthCodeVars.serializer, json);
}
