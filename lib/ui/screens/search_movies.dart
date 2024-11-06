import 'package:cinetopia/ui/componets/movie_card.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  const SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(child: Image.asset("assets/movie.png", height: 80, width: 80,),),
        SliverToBoxAdapter(child: Text("Filmes populares"),),
        SliverToBoxAdapter(child: TextField(),),
        SliverList.builder(itemBuilder: (context, index) => MovieCard(), itemCount: 10,),
      ],
    );
  }
}