import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies/src/actions/get_movies.dart';
import 'package:yts_movies/src/data/yts_api.dart';
import 'package:yts_movies/src/models/app_state.dart';
import 'package:yts_movies/src/models/movie.dart';

class AppMiddleware {
  const AppMiddleware({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getMovies,
    ];
  }

  Future<void> _getMovies(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is GetMoviesStart) {
      try {
        final List<Movie> movies = await _ytsApi.getMovies(
            store.state.nextPage, store.state.quality, store.state.genre, store.state.orderBy, store.state.sortBy);

        final GetMoviesSuccessful successful = GetMoviesSuccessful(movies);
        store.dispatch(successful);
      } catch (e) {
        final GetMoviesError error = GetMoviesError(e);
        store.dispatch(error);
      }
    }
  }
}
