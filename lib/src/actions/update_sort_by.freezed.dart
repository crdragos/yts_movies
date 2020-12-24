// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of update_sort_by;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateSortByTearOff {
  const _$UpdateSortByTearOff();

// ignore: unused_element
  _UpdateSortBy call(String sortBy) {
    return _UpdateSortBy(
      sortBy,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateSortBy = _$UpdateSortByTearOff();

/// @nodoc
mixin _$UpdateSortBy {
  String get sortBy;

  $UpdateSortByCopyWith<UpdateSortBy> get copyWith;
}

/// @nodoc
abstract class $UpdateSortByCopyWith<$Res> {
  factory $UpdateSortByCopyWith(UpdateSortBy value, $Res Function(UpdateSortBy) then) =
      _$UpdateSortByCopyWithImpl<$Res>;
  $Res call({String sortBy});
}

/// @nodoc
class _$UpdateSortByCopyWithImpl<$Res> implements $UpdateSortByCopyWith<$Res> {
  _$UpdateSortByCopyWithImpl(this._value, this._then);

  final UpdateSortBy _value;
  // ignore: unused_field
  final $Res Function(UpdateSortBy) _then;

  @override
  $Res call({
    Object sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      sortBy: sortBy == freezed ? _value.sortBy : sortBy as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateSortByCopyWith<$Res> implements $UpdateSortByCopyWith<$Res> {
  factory _$UpdateSortByCopyWith(_UpdateSortBy value, $Res Function(_UpdateSortBy) then) =
      __$UpdateSortByCopyWithImpl<$Res>;
  @override
  $Res call({String sortBy});
}

/// @nodoc
class __$UpdateSortByCopyWithImpl<$Res> extends _$UpdateSortByCopyWithImpl<$Res>
    implements _$UpdateSortByCopyWith<$Res> {
  __$UpdateSortByCopyWithImpl(_UpdateSortBy _value, $Res Function(_UpdateSortBy) _then)
      : super(_value, (v) => _then(v as _UpdateSortBy));

  @override
  _UpdateSortBy get _value => super._value as _UpdateSortBy;

  @override
  $Res call({
    Object sortBy = freezed,
  }) {
    return _then(_UpdateSortBy(
      sortBy == freezed ? _value.sortBy : sortBy as String,
    ));
  }
}

/// @nodoc
class _$_UpdateSortBy implements _UpdateSortBy {
  const _$_UpdateSortBy(this.sortBy) : assert(sortBy != null);

  @override
  final String sortBy;

  @override
  String toString() {
    return 'UpdateSortBy(sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSortBy &&
            (identical(other.sortBy, sortBy) || const DeepCollectionEquality().equals(other.sortBy, sortBy)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(sortBy);

  @override
  _$UpdateSortByCopyWith<_UpdateSortBy> get copyWith => __$UpdateSortByCopyWithImpl<_UpdateSortBy>(this, _$identity);
}

abstract class _UpdateSortBy implements UpdateSortBy {
  const factory _UpdateSortBy(String sortBy) = _$_UpdateSortBy;

  @override
  String get sortBy;
  @override
  _$UpdateSortByCopyWith<_UpdateSortBy> get copyWith;
}
