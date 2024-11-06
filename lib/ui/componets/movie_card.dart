import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 64,
          height: 124,
          decoration: BoxDecoration(
            color: Color(0xFF000000),
          ),
          margin: const EdgeInsets.only(right: 16),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Título do filme"),
            Text("Lançamento: 2014-04-04"),
          ],
        )
      ],
    );
  }
}
