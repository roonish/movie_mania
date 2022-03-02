// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDetail> _$movieDetailSerializer = new _$MovieDetailSerializer();

class _$MovieDetailSerializer implements StructuredSerializer<MovieDetail> {
  @override
  final Iterable<Type> types = const [MovieDetail, _$MovieDetail];
  @override
  final String wireName = 'MovieDetail';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'Year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
      'Rated',
      serializers.serialize(object.rated,
          specifiedType: const FullType(String)),
      'Released',
      serializers.serialize(object.released,
          specifiedType: const FullType(String)),
      'Runtime',
      serializers.serialize(object.runtime,
          specifiedType: const FullType(String)),
      'Genre',
      serializers.serialize(object.genre,
          specifiedType: const FullType(String)),
      'Director',
      serializers.serialize(object.director,
          specifiedType: const FullType(String)),
      'Writer',
      serializers.serialize(object.writer,
          specifiedType: const FullType(String)),
      'Actors',
      serializers.serialize(object.actors,
          specifiedType: const FullType(String)),
      'Plot',
      serializers.serialize(object.plot, specifiedType: const FullType(String)),
      'Language',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'Country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'Awards',
      serializers.serialize(object.awards,
          specifiedType: const FullType(String)),
      'Poster',
      serializers.serialize(object.poster,
          specifiedType: const FullType(String)),
      'Ratings',
      serializers.serialize(object.ratings,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Ratings)])),
      'Metascore',
      serializers.serialize(object.metascore,
          specifiedType: const FullType(String)),
      'imdbRating',
      serializers.serialize(object.imdbRating,
          specifiedType: const FullType(String)),
      'imdbVotes',
      serializers.serialize(object.imdbVotes,
          specifiedType: const FullType(String)),
      'imdbID',
      serializers.serialize(object.imdbID,
          specifiedType: const FullType(String)),
      'Type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'DVD',
      serializers.serialize(object.dVD, specifiedType: const FullType(String)),
      'BoxOffice',
      serializers.serialize(object.boxOffice,
          specifiedType: const FullType(String)),
      'Production',
      serializers.serialize(object.production,
          specifiedType: const FullType(String)),
      'Website',
      serializers.serialize(object.website,
          specifiedType: const FullType(String)),
      'Response',
      serializers.serialize(object.response,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MovieDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetailBuilder();

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
        case 'Rated':
          result.rated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Released':
          result.released = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Director':
          result.director = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Writer':
          result.writer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Actors':
          result.actors = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Plot':
          result.plot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Awards':
          result.awards = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Poster':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Ratings':
          result.ratings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Ratings)]))!
              as BuiltList<Object?>);
          break;
        case 'Metascore':
          result.metascore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbRating':
          result.imdbRating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbVotes':
          result.imdbVotes = serializers.deserialize(value,
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
        case 'DVD':
          result.dVD = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'BoxOffice':
          result.boxOffice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Production':
          result.production = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Website':
          result.website = serializers.deserialize(value,
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

class _$MovieDetail extends MovieDetail {
  @override
  final String title;
  @override
  final String year;
  @override
  final String rated;
  @override
  final String released;
  @override
  final String runtime;
  @override
  final String genre;
  @override
  final String director;
  @override
  final String writer;
  @override
  final String actors;
  @override
  final String plot;
  @override
  final String language;
  @override
  final String country;
  @override
  final String awards;
  @override
  final String poster;
  @override
  final BuiltList<Ratings> ratings;
  @override
  final String metascore;
  @override
  final String imdbRating;
  @override
  final String imdbVotes;
  @override
  final String imdbID;
  @override
  final String type;
  @override
  final String dVD;
  @override
  final String boxOffice;
  @override
  final String production;
  @override
  final String website;
  @override
  final String response;

  factory _$MovieDetail([void Function(MovieDetailBuilder)? updates]) =>
      (new MovieDetailBuilder()..update(updates)).build();

  _$MovieDetail._(
      {required this.title,
      required this.year,
      required this.rated,
      required this.released,
      required this.runtime,
      required this.genre,
      required this.director,
      required this.writer,
      required this.actors,
      required this.plot,
      required this.language,
      required this.country,
      required this.awards,
      required this.poster,
      required this.ratings,
      required this.metascore,
      required this.imdbRating,
      required this.imdbVotes,
      required this.imdbID,
      required this.type,
      required this.dVD,
      required this.boxOffice,
      required this.production,
      required this.website,
      required this.response})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'MovieDetail', 'title');
    BuiltValueNullFieldError.checkNotNull(year, 'MovieDetail', 'year');
    BuiltValueNullFieldError.checkNotNull(rated, 'MovieDetail', 'rated');
    BuiltValueNullFieldError.checkNotNull(released, 'MovieDetail', 'released');
    BuiltValueNullFieldError.checkNotNull(runtime, 'MovieDetail', 'runtime');
    BuiltValueNullFieldError.checkNotNull(genre, 'MovieDetail', 'genre');
    BuiltValueNullFieldError.checkNotNull(director, 'MovieDetail', 'director');
    BuiltValueNullFieldError.checkNotNull(writer, 'MovieDetail', 'writer');
    BuiltValueNullFieldError.checkNotNull(actors, 'MovieDetail', 'actors');
    BuiltValueNullFieldError.checkNotNull(plot, 'MovieDetail', 'plot');
    BuiltValueNullFieldError.checkNotNull(language, 'MovieDetail', 'language');
    BuiltValueNullFieldError.checkNotNull(country, 'MovieDetail', 'country');
    BuiltValueNullFieldError.checkNotNull(awards, 'MovieDetail', 'awards');
    BuiltValueNullFieldError.checkNotNull(poster, 'MovieDetail', 'poster');
    BuiltValueNullFieldError.checkNotNull(ratings, 'MovieDetail', 'ratings');
    BuiltValueNullFieldError.checkNotNull(
        metascore, 'MovieDetail', 'metascore');
    BuiltValueNullFieldError.checkNotNull(
        imdbRating, 'MovieDetail', 'imdbRating');
    BuiltValueNullFieldError.checkNotNull(
        imdbVotes, 'MovieDetail', 'imdbVotes');
    BuiltValueNullFieldError.checkNotNull(imdbID, 'MovieDetail', 'imdbID');
    BuiltValueNullFieldError.checkNotNull(type, 'MovieDetail', 'type');
    BuiltValueNullFieldError.checkNotNull(dVD, 'MovieDetail', 'dVD');
    BuiltValueNullFieldError.checkNotNull(
        boxOffice, 'MovieDetail', 'boxOffice');
    BuiltValueNullFieldError.checkNotNull(
        production, 'MovieDetail', 'production');
    BuiltValueNullFieldError.checkNotNull(website, 'MovieDetail', 'website');
    BuiltValueNullFieldError.checkNotNull(response, 'MovieDetail', 'response');
  }

  @override
  MovieDetail rebuild(void Function(MovieDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetailBuilder toBuilder() => new MovieDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDetail &&
        title == other.title &&
        year == other.year &&
        rated == other.rated &&
        released == other.released &&
        runtime == other.runtime &&
        genre == other.genre &&
        director == other.director &&
        writer == other.writer &&
        actors == other.actors &&
        plot == other.plot &&
        language == other.language &&
        country == other.country &&
        awards == other.awards &&
        poster == other.poster &&
        ratings == other.ratings &&
        metascore == other.metascore &&
        imdbRating == other.imdbRating &&
        imdbVotes == other.imdbVotes &&
        imdbID == other.imdbID &&
        type == other.type &&
        dVD == other.dVD &&
        boxOffice == other.boxOffice &&
        production == other.production &&
        website == other.website &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc(0, title.hashCode), year.hashCode), rated.hashCode), released.hashCode), runtime.hashCode), genre.hashCode),
                                                                                director.hashCode),
                                                                            writer.hashCode),
                                                                        actors.hashCode),
                                                                    plot.hashCode),
                                                                language.hashCode),
                                                            country.hashCode),
                                                        awards.hashCode),
                                                    poster.hashCode),
                                                ratings.hashCode),
                                            metascore.hashCode),
                                        imdbRating.hashCode),
                                    imdbVotes.hashCode),
                                imdbID.hashCode),
                            type.hashCode),
                        dVD.hashCode),
                    boxOffice.hashCode),
                production.hashCode),
            website.hashCode),
        response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieDetail')
          ..add('title', title)
          ..add('year', year)
          ..add('rated', rated)
          ..add('released', released)
          ..add('runtime', runtime)
          ..add('genre', genre)
          ..add('director', director)
          ..add('writer', writer)
          ..add('actors', actors)
          ..add('plot', plot)
          ..add('language', language)
          ..add('country', country)
          ..add('awards', awards)
          ..add('poster', poster)
          ..add('ratings', ratings)
          ..add('metascore', metascore)
          ..add('imdbRating', imdbRating)
          ..add('imdbVotes', imdbVotes)
          ..add('imdbID', imdbID)
          ..add('type', type)
          ..add('dVD', dVD)
          ..add('boxOffice', boxOffice)
          ..add('production', production)
          ..add('website', website)
          ..add('response', response))
        .toString();
  }
}

class MovieDetailBuilder implements Builder<MovieDetail, MovieDetailBuilder> {
  _$MovieDetail? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _rated;
  String? get rated => _$this._rated;
  set rated(String? rated) => _$this._rated = rated;

  String? _released;
  String? get released => _$this._released;
  set released(String? released) => _$this._released = released;

  String? _runtime;
  String? get runtime => _$this._runtime;
  set runtime(String? runtime) => _$this._runtime = runtime;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _director;
  String? get director => _$this._director;
  set director(String? director) => _$this._director = director;

  String? _writer;
  String? get writer => _$this._writer;
  set writer(String? writer) => _$this._writer = writer;

  String? _actors;
  String? get actors => _$this._actors;
  set actors(String? actors) => _$this._actors = actors;

  String? _plot;
  String? get plot => _$this._plot;
  set plot(String? plot) => _$this._plot = plot;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _awards;
  String? get awards => _$this._awards;
  set awards(String? awards) => _$this._awards = awards;

  String? _poster;
  String? get poster => _$this._poster;
  set poster(String? poster) => _$this._poster = poster;

  ListBuilder<Ratings>? _ratings;
  ListBuilder<Ratings> get ratings =>
      _$this._ratings ??= new ListBuilder<Ratings>();
  set ratings(ListBuilder<Ratings>? ratings) => _$this._ratings = ratings;

  String? _metascore;
  String? get metascore => _$this._metascore;
  set metascore(String? metascore) => _$this._metascore = metascore;

  String? _imdbRating;
  String? get imdbRating => _$this._imdbRating;
  set imdbRating(String? imdbRating) => _$this._imdbRating = imdbRating;

  String? _imdbVotes;
  String? get imdbVotes => _$this._imdbVotes;
  set imdbVotes(String? imdbVotes) => _$this._imdbVotes = imdbVotes;

  String? _imdbID;
  String? get imdbID => _$this._imdbID;
  set imdbID(String? imdbID) => _$this._imdbID = imdbID;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _dVD;
  String? get dVD => _$this._dVD;
  set dVD(String? dVD) => _$this._dVD = dVD;

  String? _boxOffice;
  String? get boxOffice => _$this._boxOffice;
  set boxOffice(String? boxOffice) => _$this._boxOffice = boxOffice;

  String? _production;
  String? get production => _$this._production;
  set production(String? production) => _$this._production = production;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  MovieDetailBuilder();

  MovieDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _year = $v.year;
      _rated = $v.rated;
      _released = $v.released;
      _runtime = $v.runtime;
      _genre = $v.genre;
      _director = $v.director;
      _writer = $v.writer;
      _actors = $v.actors;
      _plot = $v.plot;
      _language = $v.language;
      _country = $v.country;
      _awards = $v.awards;
      _poster = $v.poster;
      _ratings = $v.ratings.toBuilder();
      _metascore = $v.metascore;
      _imdbRating = $v.imdbRating;
      _imdbVotes = $v.imdbVotes;
      _imdbID = $v.imdbID;
      _type = $v.type;
      _dVD = $v.dVD;
      _boxOffice = $v.boxOffice;
      _production = $v.production;
      _website = $v.website;
      _response = $v.response;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDetail;
  }

  @override
  void update(void Function(MovieDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieDetail build() {
    _$MovieDetail _$result;
    try {
      _$result = _$v ??
          new _$MovieDetail._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'MovieDetail', 'title'),
              year: BuiltValueNullFieldError.checkNotNull(
                  year, 'MovieDetail', 'year'),
              rated: BuiltValueNullFieldError.checkNotNull(
                  rated, 'MovieDetail', 'rated'),
              released: BuiltValueNullFieldError.checkNotNull(
                  released, 'MovieDetail', 'released'),
              runtime: BuiltValueNullFieldError.checkNotNull(
                  runtime, 'MovieDetail', 'runtime'),
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, 'MovieDetail', 'genre'),
              director: BuiltValueNullFieldError.checkNotNull(
                  director, 'MovieDetail', 'director'),
              writer: BuiltValueNullFieldError.checkNotNull(
                  writer, 'MovieDetail', 'writer'),
              actors: BuiltValueNullFieldError.checkNotNull(
                  actors, 'MovieDetail', 'actors'),
              plot: BuiltValueNullFieldError.checkNotNull(
                  plot, 'MovieDetail', 'plot'),
              language:
                  BuiltValueNullFieldError.checkNotNull(language, 'MovieDetail', 'language'),
              country: BuiltValueNullFieldError.checkNotNull(country, 'MovieDetail', 'country'),
              awards: BuiltValueNullFieldError.checkNotNull(awards, 'MovieDetail', 'awards'),
              poster: BuiltValueNullFieldError.checkNotNull(poster, 'MovieDetail', 'poster'),
              ratings: ratings.build(),
              metascore: BuiltValueNullFieldError.checkNotNull(metascore, 'MovieDetail', 'metascore'),
              imdbRating: BuiltValueNullFieldError.checkNotNull(imdbRating, 'MovieDetail', 'imdbRating'),
              imdbVotes: BuiltValueNullFieldError.checkNotNull(imdbVotes, 'MovieDetail', 'imdbVotes'),
              imdbID: BuiltValueNullFieldError.checkNotNull(imdbID, 'MovieDetail', 'imdbID'),
              type: BuiltValueNullFieldError.checkNotNull(type, 'MovieDetail', 'type'),
              dVD: BuiltValueNullFieldError.checkNotNull(dVD, 'MovieDetail', 'dVD'),
              boxOffice: BuiltValueNullFieldError.checkNotNull(boxOffice, 'MovieDetail', 'boxOffice'),
              production: BuiltValueNullFieldError.checkNotNull(production, 'MovieDetail', 'production'),
              website: BuiltValueNullFieldError.checkNotNull(website, 'MovieDetail', 'website'),
              response: BuiltValueNullFieldError.checkNotNull(response, 'MovieDetail', 'response'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ratings';
        ratings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
