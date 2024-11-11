import 'package:cinetopia/app/services/search_movies_service.dart';

import '../models/movie.dart';
class ReleasesViewmodel {
  List<Movie> _moviesList = [];
  Future<List<Movie>> getUpcomingMovies() async {
    final SearchMoviesService searchForUpcomingMovies = SearchForUpcomingMovies();
    _moviesList = await searchForUpcomingMovies.getMovies();
    return _moviesList;
  }
  List<Movie> get moviesList => _moviesList;
}