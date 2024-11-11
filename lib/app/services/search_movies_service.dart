import 'dart:convert';

import 'package:cinetopia/app/helpers/consts.dart';
import 'package:cinetopia/app/models/movie.dart';
import 'package:http/http.dart' as http;

abstract class SearchMoviesService {
  Future<List<Movie>> getMovies();
}

class SearchPopularMoviesService implements SearchMoviesService {

  final String popularMoviesUrl = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1";

  List<Movie> movies = <Movie>[];

  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response = await http.get(
        Uri.parse(popularMoviesUrl),
        headers: requestHeader,
      );
      if (response.statusCode == 200) {
        for (dynamic movie in json.decode(response.body)['results']) {
          movies.add(Movie.fromMap(movie));
        }

        for (Movie movie in movies) {
          print(movie.title);
        }
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