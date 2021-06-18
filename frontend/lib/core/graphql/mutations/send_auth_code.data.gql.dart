// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cooksoc/core/graphql/serializers.gql.dart' as _i1;

part 'send_auth_code.data.gql.g.dart';

abstract class GSendAuthCodeData
    implements Built<GSendAuthCodeData, GSendAuthCodeDataBuilder> {
  GSendAuthCodeData._();

  factory GSendAuthCodeData([Function(GSendAuthCodeDataBuilder b) updates]) =
      _$GSendAuthCodeData;

  static void _initializeBuilder(GSendAuthCodeDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSendAuthCodeData_sendAuthCode get sendAuthCode;
  static Serializer<GSendAuthCodeData> get serializer =>
      _$gSendAuthCodeDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSendAuthCodeData.serializer, this)
          as Map<String, dynamic>);
  static GSendAuthCodeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSendAuthCodeData.serializer, json);
}

abstract class GSendAuthCodeData_sendAuthCode
    implements
        Built<GSendAuthCodeData_sendAuthCode,
            GSendAuthCodeData_sendAuthCodeBuilder> {
  GSendAuthCodeData_sendAuthCode._();

  factory GSendAuthCodeData_sendAuthCode(
          [Function(GSendAuthCodeData_sendAuthCodeBuilder b) updates]) =
      _$GSendAuthCodeData_sendAuthCode;

  static void _initializeBuilder(GSendAuthCodeData_sendAuthCodeBuilder b) =>
      b..G__typename = 'AuthCodeResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get errorMessage;
  bool get success;
  static Serializer<GSendAuthCodeData_sendAuthCode> get serializer =>
      _$gSendAuthCodeDataSendAuthCodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GSendAuthCodeData_sendAuthCode.serializer, this) as Map<String, dynamic>);
  static GSendAuthCodeData_sendAuthCode? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GSendAuthCodeData_sendAuthCode.serializer, json);
}
