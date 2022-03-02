// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieModel> _$movieModelSerializer = new _$MovieModelSerializer();

class _$MovieModelSerializer implements StructuredSerializer<MovieModel> {
  @override
  final Iterable<Type> types = const [MovieModel, _$MovieModel];
  @override
  final String wireName = 'MovieModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Search',
      serializers.serialize(object.search,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Search)])),
      'totalResults',
      serializers.serialize(object.totalResults,
          specifiedType: const FullType(String)),
      'Response',
      serializers.serialize(object.response,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MovieModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Search':
          result.search.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Search)]))!
              as BuiltList<Object?>);
          break;
        case 'totalResults':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Response':
          result.response = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieModel extends MovieModel {
  @override
  final BuiltList<Search> search;
  @override
  final String totalResults;
  @override
  final String response;

  factory _$MovieModel([void Function(MovieModelBuilder)? updates]) =>
      (new MovieModelBuilder()..update(updates)).build();

  _$MovieModel._(
      {required this.search,
      required this.totalResults,
      required this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(search, 'MovieModel', 'search');
    BuiltValueNullFieldError.checkNotNull(
        totalResults, 'MovieModel', 'totalResults');
    BuiltValueNullFieldError.checkNotNull(response, 'MovieModel', 'response');
  }

  @override
  MovieModel rebuild(void Function(MovieModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieModelBuilder toBuilder() => new MovieModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieModel &&
        search == other.search &&
        totalResults == other.totalResults &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, search.hashCode), totalResults.hashCode),
        response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieModel')
          ..add('search', search)
          ..add('totalResults', totalResults)
          ..add('response', response))
        .toString();
  }
}

class MovieModelBuilder implements Builder<MovieModel, MovieModelBuilder> {
  _$MovieModel? _$v;

  ListBuilder<Search>? _search;
  ListBuilder<Search> get search =>
      _$this._search ??= new ListBuilder<Search>();
  set search(ListBuilder<Search>? search) => _$this._search = search;

  String? _totalResults;
  String? get totalResults => _$this._totalResults;
  set totalResults(String? totalResults) => _$this._totalResults = totalResults;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  MovieModelBuilder();

  MovieModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _search = $v.search.toBuilder();
      _totalResults = $v.totalResults;
      _response = $v.response;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieModel;
  }

  @override
  void update(void Function(MovieModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieModel build() {
    _$MovieModel _$result;
    try {
      _$result = _$v ??
          new _$MovieModel._(
              search: search.build(),
              totalResults: BuiltValueNullFieldError.checkNotNull(
                  totalResults, 'MovieModel', 'totalResults'),
              response: BuiltValueNullFieldError.checkNotNull(
                  response, 'MovieModel', 'response'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'search';
        search.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
