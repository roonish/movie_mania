import 'package:http/http.dart' as http;

class Api {
  static String searchUrl = "https://www.omdbapi.com/?apikey=bf2fe5a3&";
  // s=batman
  static Future<http.Response> getRequest(String endpoint) async {
    http.Response response;
    final url = Uri.parse(searchUrl + endpoint);
    try {
      response = await http.get(url);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }
}
