import 'package:cinetopia/app/models/movie.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;

  const MovieDetails({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFF120326),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                "assets/movie.png",
                width: 80,
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  movie.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    width: 176,
                    height: 235,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(movie.getPosterImage()),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  "Descrição",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Text(movie.overview),
            ],
          ),
        ),
      ),
    );
  }
}
