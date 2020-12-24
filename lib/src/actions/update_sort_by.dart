library update_sort_by;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_sort_by.freezed.dart';

@freezed
abstract class UpdateSortBy with _$UpdateSortBy {
  const factory UpdateSortBy(String sortBy) = _UpdateSortBy;
}
