library movie_model;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mymovies/model/search.dart';

part 'movie_model.g.dart';

abstract class MovieModel implements Built<MovieModel, MovieModelBuilder> {
  MovieModel._();

  factory MovieModel([updates(MovieModelBuilder b)]) = _$MovieModel;

  @BuiltValueField(wireName: 'Search')
  BuiltList<Search> get search;
  @BuiltValueField(wireName: 'totalResults')
  String get totalResults;
  @BuiltValueField(wireName: 'Response')
  String get response;
  // String toJson() {
  //   return json.encode(serializers.serializeWith(MovieModel.serializer, this));
  // }

  // static MovieModel fromJson(String jsonString) {
  //   return serializers.deserializeWith(
  //       MovieModel.serializer, json.decode(jsonString));
  // }

  static Serializer<MovieModel> get serializer => _$movieModelSerializer;
}
