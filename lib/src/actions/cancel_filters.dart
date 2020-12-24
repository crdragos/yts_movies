library cancel_filters;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_filters.freezed.dart';

@freezed
abstract class CancelFilters with _$CancelFilters {
  const factory CancelFilters(bool cancelFilters) = _CancelFilters;
}
