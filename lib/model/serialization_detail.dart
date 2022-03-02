library serialization_detail;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:mymovies/model/movie_detail.dart';
import 'package:mymovies/model/ratings.dart';

part 'serialization_detail.g.dart';

@SerializersFor([
  MovieDetail,
])
final Serializers serializersdetail =
    (_$serializersdetail.toBuilder()..addPlugin(StandardJsonPlugin())).build();
