library ratings;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ratings.g.dart';

abstract class Ratings implements Built<Ratings, RatingsBuilder> {
  Ratings._();

  factory Ratings([updates(RatingsBuilder b)]) = _$Ratings;

  @BuiltValueField(wireName: 'Source')
  String get source;
  @BuiltValueField(wireName: 'Value')
  String get value;

  static Serializer<Ratings> get serializer => _$ratingsSerializer;
}
