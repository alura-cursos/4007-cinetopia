import 'package:cinetopia/app/api_key.dart';
import 'package:cinetopia/app/models/movie.dart';
import 'package:http/http.dart' as http;

class SearchMoviesService {
  final String popularMoviesUrl = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1";

  List<Movie> movies = <Movie>[];

  Future<List<Movie>> searchMovies() async {
    try {
      final response = await http.get(
        Uri.parse(popularMoviesUrl),
        headers: {
          'accept': 'application/json',
          'Authorization': 'Bearer $apiKey'
        },
      );
      if (response.statusCode == 200) {
        print(response.body);
      }

      else {
        throw Exception(response.body);
      }
      return movies;

    } catch (e) {
      print(e);
      return movies;
    }
  }
}