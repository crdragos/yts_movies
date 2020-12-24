library show_filters;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_filters.freezed.dart';

@freezed
abstract class ShowFilters with _$ShowFilters {
  const factory ShowFilters(bool showFilters) = _ShowFilters;
}
