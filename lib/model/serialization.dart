library serialization;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:mymovies/model/movie_model.dart';
import 'package:mymovies/model/search.dart';

part 'serialization.g.dart';

@SerializersFor([
  MovieModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
