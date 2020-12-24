import 'package:flutter/material.dart';
import 'package:yts_movies/src/containers/movie_container.dart';
import 'package:yts_movies/src/models/movie.dart';

class MovieDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text(movie.title),
            centerTitle: true,
          ),
          body: Image.network(movie.mediumCoverImage),
        );
      },
    );
  }
}
