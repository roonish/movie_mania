library movie_detail;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mymovies/model/ratings.dart';

part 'movie_detail.g.dart';

abstract class MovieDetail implements Built<MovieDetail, MovieDetailBuilder> {
  MovieDetail._();

  factory MovieDetail([updates(MovieDetailBuilder b)]) = _$MovieDetail;

  @BuiltValueField(wireName: 'Title')
  String get title;
  @BuiltValueField(wireName: 'Year')
  String get year;
  @BuiltValueField(wireName: 'Rated')
  String get rated;
  @BuiltValueField(wireName: 'Released')
  String get released;
  @BuiltValueField(wireName: 'Runtime')
  String get runtime;
  @BuiltValueField(wireName: 'Genre')
  String get genre;
  @BuiltValueField(wireName: 'Director')
  String get director;
  @BuiltValueField(wireName: 'Writer')
  String get writer;
  @BuiltValueField(wireName: 'Actors')
  String get actors;
  @BuiltValueField(wireName: 'Plot')
  String get plot;
  @BuiltValueField(wireName: 'Language')
  String get language;
  @BuiltValueField(wireName: 'Country')
  String get country;
  @BuiltValueField(wireName: 'Awards')
  String get awards;
  @BuiltValueField(wireName: 'Poster')
  String get poster;
  @BuiltValueField(wireName: 'Ratings')
  BuiltList<Ratings> get ratings;
  @BuiltValueField(wireName: 'Metascore')
  String get metascore;
  @BuiltValueField(wireName: 'imdbRating')
  String get imdbRating;
  @BuiltValueField(wireName: 'imdbVotes')
  String get imdbVotes;
  @BuiltValueField(wireName: 'imdbID')
  String get imdbID;
  @BuiltValueField(wireName: 'Type')
  String get type;
  @BuiltValueField(wireName: 'DVD')
  String get dVD;
  @BuiltValueField(wireName: 'BoxOffice')
  String get boxOffice;
  @BuiltValueField(wireName: 'Production')
  String get production;
  @BuiltValueField(wireName: 'Website')
  String get website;
  @BuiltValueField(wireName: 'Response')
  String get response;

  static Serializer<MovieDetail> get serializer => _$movieDetailSerializer;
}
