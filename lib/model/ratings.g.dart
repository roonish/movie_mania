// GENERATED CODE - DO NOT MODIFY BY HAND

part of ratings;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Ratings> _$ratingsSerializer = new _$RatingsSerializer();

class _$RatingsSerializer implements StructuredSerializer<Ratings> {
  @override
  final Iterable<Type> types = const [Ratings, _$Ratings];
  @override
  final String wireName = 'Ratings';

  @override
  Iterable<Object?> serialize(Serializers serializers, Ratings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Source',
      serializers.serialize(object.source,
          specifiedType: const FullType(String)),
      'Value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Ratings deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Ratings extends Ratings {
  @override
  final String source;
  @override
  final String value;

  factory _$Ratings([void Function(RatingsBuilder)? updates]) =>
      (new RatingsBuilder()..update(updates)).build();

  _$Ratings._({required this.source, required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(source, 'Ratings', 'source');
    BuiltValueNullFieldError.checkNotNull(value, 'Ratings', 'value');
  }

  @override
  Ratings rebuild(void Function(RatingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingsBuilder toBuilder() => new RatingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ratings && source == other.source && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, source.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ratings')
          ..add('source', source)
          ..add('value', value))
        .toString();
  }
}

class RatingsBuilder implements Builder<Ratings, RatingsBuilder> {
  _$Ratings? _$v;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  RatingsBuilder();

  RatingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source = $v.source;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ratings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ratings;
  }

  @override
  void update(void Function(RatingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Ratings build() {
    final _$result = _$v ??
        new _$Ratings._(
            source: BuiltValueNullFieldError.checkNotNull(
                source, 'Ratings', 'source'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'Ratings', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
