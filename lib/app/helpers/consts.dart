import 'package:cinetopia/app/api_key.dart';

const String popularMoviesUrl =
    "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1";

const String upcomingUrl = "https://api.themoviedb.org/3/movie/upcoming?language=en-US&region=US&page=1";

const String moviePrefixUrl = "https://api.themoviedb.org/3/search/movie?query=";

const String movieFilterSulfix = "&include_adult=false&language=en-US&page=1';";

const String imageUrlPrefix = "https://image.tmdb.org/t/p/w500";

const requestHeader = {
  'accept': 'application/json',
  'Authorization': 'Bearer $apiKey'
};
