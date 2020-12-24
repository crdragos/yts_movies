import 'package:yts_movies/src/actions/cancel_filters.dart';
import 'package:yts_movies/src/actions/get_movies.dart';
import 'package:yts_movies/src/actions/set_selected_movie.dart';
import 'package:yts_movies/src/actions/show_filters.dart';
import 'package:yts_movies/src/actions/update_genre.dart';
import 'package:yts_movies/src/actions/update_order_by.dart';
import 'package:yts_movies/src/actions/update_quality.dart';
import 'package:yts_movies/src/actions/update_sort_by.dart';
import 'package:yts_movies/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  print('action: $action');
  final AppStateBuilder builder = state.toBuilder();

  if (action is GetMoviesStart) {
    builder.isLoading = true;
  } else if (action is GetMoviesSuccessful) {
    builder
      ..movies.addAll(action.movies)
      ..isLoading = false
      ..nextPage = builder.nextPage + 1;
  } else if (action is GetMoviesError) {
    builder.isLoading = false;
  } else if (action is UpdateQuality) {
    builder
      ..movies.clear()
      ..nextPage = 1
      ..cancelFilters = false
      ..quality = action.quality;
  } else if (action is ShowFilters) {
    builder
      ..showFilters = action.showFilters
      ..genre = null
      ..quality = null;
  } else if (action is UpdateGenre) {
    builder
      ..movies.clear()
      ..nextPage = 1
      ..cancelFilters = false
      ..genre = action.genre;
  } else if (action is SetSelectedMovie) {
    builder.selectedMovie = action.movieId;
  } else if (action is UpdateOrderBy) {
    builder
      ..movies.clear()
      ..nextPage = 1
      ..cancelFilters = false
      ..orderBy = action.orderBy;
  } else if (action is UpdateSortBy) {
    builder
      ..sortBy = action.sortBy
      ..cancelFilters = false
      ..nextPage = 1
      ..movies.clear();
  } else if (action is CancelFilters) {
    builder
      ..movies.clear()
      ..cancelFilters = true
      ..sortBy = 'date_added'
      ..nextPage = 1
      ..genre = null
      ..orderBy = 'desc'
      ..quality = null;
  }

  return builder.build();
}
