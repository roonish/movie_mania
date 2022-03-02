// GENERATED CODE - DO NOT MODIFY BY HAND

part of search;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Search> _$searchSerializer = new _$SearchSerializer();

class _$SearchSerializer implements StructuredSerializer<Search> {
  @override
  final Iterable<Type> types = const [Search, _$Search];
  @override
  final String wireName = 'Search';

  @override
  Iterable<Object?> serialize(Serializers serializers, Search object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'Year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
      'imdbID',
      serializers.serialize(object.imdbID,
          specifiedType: const FullType(String)),
      'Type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'Poster',
      serializers.serialize(object.poster,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Search deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbID':
          result.imdbID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Poster':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Search extends Search {
  @override
  final String title;
  @override
  final String year;
  @override
  final String imdbID;
  @override
  final String type;
  @override
  final String poster;

  factory _$Search([void Function(SearchBuilder)? updates]) =>
      (new SearchBuilder()..update(updates)).build();

  _$Search._(
      {required this.title,
      required this.year,
      required this.imdbID,
      required this.type,
      required this.poster})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'Search', 'title');
    BuiltValueNullFieldError.checkNotNull(year, 'Search', 'year');
    BuiltValueNullFieldError.checkNotNull(imdbID, 'Search', 'imdbID');
    BuiltValueNullFieldError.checkNotNull(type, 'Search', 'type');
    BuiltValueNullFieldError.checkNotNull(poster, 'Search', 'poster');
  }

  @override
  Search rebuild(void Function(SearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchBuilder toBuilder() => new SearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Search &&
        title == other.title &&
        year == other.year &&
        imdbID == other.imdbID &&
        type == other.type &&
        poster == other.poster;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), year.hashCode), imdbID.hashCode),
            type.hashCode),
        poster.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Search')
          ..add('title', title)
          ..add('year', year)
          ..add('imdbID', imdbID)
          ..add('type', type)
          ..add('poster', poster))
        .toString();
  }
}

class SearchBuilder implements Builder<Search, SearchBuilder> {
  _$Search? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _imdbID;
  String? get imdbID => _$this._imdbID;
  set imdbID(String? imdbID) => _$this._imdbID = imdbID;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _poster;
  String? get poster => _$this._poster;
  set poster(String? poster) => _$this._poster = poster;

  SearchBuilder();

  SearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _year = $v.year;
      _imdbID = $v.imdbID;
      _type = $v.type;
      _poster = $v.poster;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Search other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Search;
  }

  @override
  void update(void Function(SearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Search build() {
    final _$result = _$v ??
        new _$Search._(
            title:
                BuiltValueNullFieldError.checkNotNull(title, 'Search', 'title'),
            year: BuiltValueNullFieldError.checkNotNull(year, 'Search', 'year'),
            imdbID: BuiltValueNullFieldError.checkNotNull(
                imdbID, 'Search', 'imdbID'),
            type: BuiltValueNullFieldError.checkNotNull(type, 'Search', 'type'),
            poster: BuiltValueNullFieldError.checkNotNull(
                poster, 'Search', 'poster'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
