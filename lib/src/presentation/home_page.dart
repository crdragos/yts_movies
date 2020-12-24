import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies/src/actions/cancel_filters.dart';
import 'package:yts_movies/src/actions/get_movies.dart';
import 'package:yts_movies/src/actions/set_selected_movie.dart';
import 'package:yts_movies/src/actions/show_filters.dart';
import 'package:yts_movies/src/actions/update_genre.dart';
import 'package:yts_movies/src/actions/update_order_by.dart';
import 'package:yts_movies/src/actions/update_quality.dart';
import 'package:yts_movies/src/actions/update_sort_by.dart';
import 'package:yts_movies/src/containers/cancel_filters_container.dart';
import 'package:yts_movies/src/containers/is_loading_container.dart';
import 'package:yts_movies/src/containers/movies_container.dart';
import 'package:yts_movies/src/containers/quality_container.dart';
import 'package:yts_movies/src/containers/show_filters_container.dart';
import 'package:yts_movies/src/containers/update_genre_container.dart';
import 'package:yts_movies/src/containers/update_order_by_container.dart';
import 'package:yts_movies/src/containers/update_sort_by_container.dart';
import 'package:yts_movies/src/models/app_state.dart';
import 'package:yts_movies/src/models/movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IsLoadingContainer(
      builder: (BuildContext context, bool isLoading) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange[300],
            title: const Text(
              'Yts Movies',
              style: TextStyle(fontSize: 22.0, color: Colors.black),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.grey[200],
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
                            UpdateOrderByConatiner(
                              builder: (BuildContext context, String orderBy) {
                                return GestureDetector(
                                  onTap: () {
                                    StoreProvider.of<AppState>(context)
                                      ..dispatch(UpdateOrderBy(orderBy == 'desc' ? 'asc' : 'desc'))
                                      ..dispatch(const GetMovies());
                                  },
                                  child: orderBy == 'desc'
                                      ? const Icon(CupertinoIcons.sort_down)
                                      : const Icon(CupertinoIcons.sort_up),
                                );
                              },
                            ),
                            const SizedBox(width: 8.0),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        QualityContainer(
                          builder: (BuildContext context, String quality) {
                            return DropdownButton<String>(
                              onChanged: (String value) {
                                StoreProvider.of<AppState>(context)
                                  ..dispatch(UpdateQuality(value))
                                  ..dispatch(const GetMovies());
                              },
                              hint: const Text('Quality'),
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
                        const SizedBox(width: 10.0),
                        UpdateGenreContainer(
                          builder: (BuildContext context, String genre) {
                            return DropdownButton<String>(
                              items: <String>[
                                'Action',
                                'Adventure',
                                'Animation',
                                'Biography',
                                'Comedy',
                                'Crime',
                                'Documentary',
                                'Drama',
                                'Family',
                                'Fantasy',
                                'Film Noir',
                                'History',
                                'Horror',
                                'Music',
                                'Musical',
                                'Mystery',
                                'Romance',
                                'Sci-Fi',
                                'Short Film',
                                'Sport',
                                'Superhero',
                                'Thriller',
                                'War',
                                'Western',
                              ].map((String genre) {
                                return DropdownMenuItem<String>(
                                  value: genre,
                                  child: Text(genre),
                                );
                              }).toList(),
                              value: genre,
                              hint: const Text('Genre'),
                              onChanged: (String value) {
                                StoreProvider.of<AppState>(context)
                                  ..dispatch(UpdateGenre(value))
                                  ..dispatch(const GetMovies());
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 10.0),
                        UpdateSortByContainer(
                          builder: (BuildContext context, String sortBy) {
                            return DropdownButton<String>(
                              items: <String>[
                                'title',
                                'year',
                                'rating',
                                'peers',
                                'seeds',
                                'download_count',
                                'like_count',
                                'date_added',
                              ].map((String sortBy) {
                                return DropdownMenuItem<String>(
                                  child: Text(sortBy),
                                  value: sortBy,
                                );
                              }).toList(),
                              hint: const Text('Sort By'),
                              value: sortBy,
                              onChanged: (String value) {
                                StoreProvider.of<AppState>(context)
                                  ..dispatch(UpdateSortBy(value))
                                  ..dispatch(const GetMovies());
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 10.0),
                        CancelFiltersContainer(
                          builder: (BuildContext context, bool clearFliters) {
                            return GestureDetector(
                              onTap: () {
                                if (clearFliters == false) {
                                  StoreProvider.of<AppState>(context)
                                    ..dispatch(CancelFilters(!clearFliters))
                                    ..dispatch(const GetMovies());
                                }
                              },
                              child: const Icon(
                                CupertinoIcons.clear_circled,
                                color: Colors.redAccent,
                              ),
                            );
                          },
                        ),
                      ],
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
                            return InkWell(
                              onTap: () {
                                StoreProvider.of<AppState>(context).dispatch(SetSelectedMovie(movie.id));
                                Navigator.pushNamed(context, '/movieDetail');
                              },
                              child: Container(
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
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
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
