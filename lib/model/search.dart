library search;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search.g.dart';

abstract class Search implements Built<Search, SearchBuilder> {
  Search._();

  factory Search([updates(SearchBuilder b)]) = _$Search;

  @BuiltValueField(wireName: 'Title')
  String get title;
  @BuiltValueField(wireName: 'Year')
  String get year;
  @BuiltValueField(wireName: 'imdbID')
  String get imdbID;
  @BuiltValueField(wireName: 'Type')
  String get type;
  @BuiltValueField(wireName: 'Poster')
  String get poster;
  // String toJson() {
  //   return json.encode(serializers.serializeWith(Search.serializer, this));
  // }

  // static Search fromJson(String jsonString) {
  //   return serializers.deserializeWith(
  //       Search.serializer, json.decode(jsonString));
  // }

  static Serializer<Search> get serializer => _$searchSerializer;
}
