import 'package:cinetopia/ui/componets/movie_card.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  const SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Image.asset(
            "assets/movie.png",
            height: 80,
            width: 80,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Text(
              "Filmes populares",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Pesquisar",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: MovieCard(),
          ),
          itemCount: 10,
        ),
      ],
    );
  }
}