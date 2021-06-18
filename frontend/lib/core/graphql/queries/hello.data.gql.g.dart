// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GHelloData> _$gHelloDataSerializer = new _$GHelloDataSerializer();

class _$GHelloDataSerializer implements StructuredSerializer<GHelloData> {
  @override
  final Iterable<Type> types = const [GHelloData, _$GHelloData];
  @override
  final String wireName = 'GHelloData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GHelloData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hello',
      serializers.serialize(object.hello,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GHelloData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHelloDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hello':
          result.hello = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GHelloData extends GHelloData {
  @override
  final String G__typename;
  @override
  final String hello;

  factory _$GHelloData([void Function(GHelloDataBuilder)? updates]) =>
      (new GHelloDataBuilder()..update(updates)).build();

  _$GHelloData._({required this.G__typename, required this.hello}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GHelloData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(hello, 'GHelloData', 'hello');
  }

  @override
  GHelloData rebuild(void Function(GHelloDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHelloDataBuilder toBuilder() => new GHelloDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHelloData &&
        G__typename == other.G__typename &&
        hello == other.hello;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), hello.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GHelloData')
          ..add('G__typename', G__typename)
          ..add('hello', hello))
        .toString();
  }
}

class GHelloDataBuilder implements Builder<GHelloData, GHelloDataBuilder> {
  _$GHelloData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _hello;
  String? get hello => _$this._hello;
  set hello(String? hello) => _$this._hello = hello;

  GHelloDataBuilder() {
    GHelloData._initializeBuilder(this);
  }

  GHelloDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _hello = $v.hello;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHelloData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHelloData;
  }

  @override
  void update(void Function(GHelloDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHelloData build() {
    final _$result = _$v ??
        new _$GHelloData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GHelloData', 'G__typename'),
            hello: BuiltValueNullFieldError.checkNotNull(
                hello, 'GHelloData', 'hello'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
