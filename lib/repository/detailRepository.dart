import 'dart:convert';
import 'package:mymovies/model/movie_detail.dart';
import 'package:mymovies/model/serialization_detail.dart';
import 'package:mymovies/repository/api.dart';

class DetailRepository {
  Future<MovieDetail> movieDetails(String query) async {
    try {
      final response = await Api.getRequest("i=" + query);
      if (response.statusCode == 200) {
        final detailObject = serializersdetail.deserializeWith(
            MovieDetail.serializer, json.decode(response.body));
        //   print("detail repositary value is $detailObject");
        return detailObject as MovieDetail;
      } else {
        throw Exception("Status code is not 200");
      }
    } catch (e) {
      throw Exception('e');
    }
  }
}
