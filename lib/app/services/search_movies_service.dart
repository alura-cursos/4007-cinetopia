import 'package:cinetopia/app/api_key.dart';
import 'package:cinetopia/app/models/movie.dart';
import 'package:http/http.dart' as http;

class SearchMoviesService {
  final String popularMoviesUrl = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1";

  Future<List<Movie>> searchMovies() async {
    try {
      await http.get(
        Uri.parse(popularMoviesUrl),
        headers: {
          'accept': 'application/json',
          'Authorization': 'Bearer $apiKey'
        },
      );
    } catch (e) {}
  }
}