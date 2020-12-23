library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:yts_movies/src/models/movie.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder
      ..isLoading = true
      ..showFilters = false
      ..nextPage = 1;
    return builder.build();
  }

  AppState._();

  BuiltList<Movie> get movies;

  bool get isLoading;

  bool get showFilters;

  int get nextPage;

  @nullable
  String get quality;
}
