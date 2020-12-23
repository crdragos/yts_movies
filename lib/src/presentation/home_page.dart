import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies/src/actions/get_movies.dart';
import 'package:yts_movies/src/actions/show_filters.dart';
import 'package:yts_movies/src/actions/update_quality.dart';
import 'package:yts_movies/src/containers/is_loading_container.dart';
import 'package:yts_movies/src/containers/movies_container.dart';
import 'package:yts_movies/src/containers/quality_container.dart';
import 'package:yts_movies/src/containers/show_filters_container.dart';
import 'package:yts_movies/src/models/app_state.dart';
import 'package:yts_movies/src/models/movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IsLoadingContainer(
      builder: (BuildContext context, bool isLoading) {
        return Scaffold(
          appBar: AppBar(),
          body: Builder(
            builder: (BuildContext context) {
              if (isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Movies',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            ShowFiltersContainer(
                              builder: (BuildContext context, bool showFilters) {
                                return GestureDetector(
                                  onTap: () {
                                    StoreProvider.of<AppState>(context).dispatch(ShowFilters(!showFilters));
                                  },
                                  child: const Icon(Icons.filter_alt_outlined),
                                );
                              },
                            ),
                            const SizedBox(width: 8.0),
                            GestureDetector(
                              onTap: () {
                                StoreProvider.of<AppState>(context).dispatch(const GetMovies());
                              },
                              child: const Text(
                                'Show more',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (StoreProvider.of<AppState>(context).state.showFilters) ...<Widget>[
                    QualityContainer(
                      builder: (BuildContext context, String quality) {
                        return DropdownButton<String>(
                          onChanged: (String value) {
                            StoreProvider.of<AppState>(context)
                              ..dispatch(UpdateQuality(value))
                              ..dispatch(const GetMovies());
                          },
                          value: quality,
                          items: <String>['720p', '1080p', '2160p', '3D'].map((String quality) {
                            return DropdownMenuItem<String>(
                              value: quality,
                              child: Text(quality),
                            );
                          }).toList(),
                        );
                      },
                    ),
                  ],
                  MoviesContainer(
                    builder: (BuildContext context, BuiltList<Movie> movies) {
                      return Expanded(
                        child: GridView.builder(
                          itemCount: movies.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final Movie movie = movies[index];
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.orange[200],
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 140,
                                    width: 200,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: Image.network(
                                        movie.mediumCoverImage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  Text(
                                    '${movie.title}',
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
