import 'dart:convert';

import 'package:mymovies/model/movie_model.dart';
import 'package:mymovies/model/search.dart';
import 'package:mymovies/model/serialization.dart';
import 'package:mymovies/repository/api.dart';

class MovieRepository {
  Future<List<Search>> moviesList(String query) async {
    try {
      final response = await Api.getRequest("s=" + query);
      // "s=$query"
      if (response.statusCode == 200) {
        final movieSerialized = serializers.deserializeWith(
            MovieModel.serializer, json.decode(response.body));
        //   print(response.body);
        // print(movieSerialized);
//  disserialized wala.  MoviesDatas ko list
        //  return movieSerialized!.search.map((value) => value).toList();

        return movieSerialized!.search.toList();
      } else {
        throw Exception("status code is not 200");
      }
    } catch (e) {
      throw Exception('e');
    }
  }
}
