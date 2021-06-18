// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i1;

part 'hello.data.gql.g.dart';

abstract class GHelloData implements Built<GHelloData, GHelloDataBuilder> {
  GHelloData._();

  factory GHelloData([Function(GHelloDataBuilder b) updates]) = _$GHelloData;

  static void _initializeBuilder(GHelloDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get hello;
  static Serializer<GHelloData> get serializer => _$gHelloDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GHelloData.serializer, this)
          as Map<String, dynamic>);
  static GHelloData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GHelloData.serializer, json);
}
