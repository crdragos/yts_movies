import 'package:yts_movies/src/actions/get_movies.dart';
import 'package:yts_movies/src/actions/show_filters.dart';
import 'package:yts_movies/src/actions/update_quality.dart';
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
      ..quality = action.quality;
  } else if (action is ShowFilters) {
    builder.showFilters = action.showFilters;
  }

  return builder.build();
}
