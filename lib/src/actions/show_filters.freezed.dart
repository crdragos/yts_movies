// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of show_filters;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShowFiltersTearOff {
  const _$ShowFiltersTearOff();

// ignore: unused_element
  _ShowFilters call(bool showFilters) {
    return _ShowFilters(
      showFilters,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShowFilters = _$ShowFiltersTearOff();

/// @nodoc
mixin _$ShowFilters {
  bool get showFilters;

  $ShowFiltersCopyWith<ShowFilters> get copyWith;
}

/// @nodoc
abstract class $ShowFiltersCopyWith<$Res> {
  factory $ShowFiltersCopyWith(
          ShowFilters value, $Res Function(ShowFilters) then) =
      _$ShowFiltersCopyWithImpl<$Res>;
  $Res call({bool showFilters});
}

/// @nodoc
class _$ShowFiltersCopyWithImpl<$Res> implements $ShowFiltersCopyWith<$Res> {
  _$ShowFiltersCopyWithImpl(this._value, this._then);

  final ShowFilters _value;
  // ignore: unused_field
  final $Res Function(ShowFilters) _then;

  @override
  $Res call({
    Object showFilters = freezed,
  }) {
    return _then(_value.copyWith(
      showFilters:
          showFilters == freezed ? _value.showFilters : showFilters as bool,
    ));
  }
}

/// @nodoc
abstract class _$ShowFiltersCopyWith<$Res>
    implements $ShowFiltersCopyWith<$Res> {
  factory _$ShowFiltersCopyWith(
          _ShowFilters value, $Res Function(_ShowFilters) then) =
      __$ShowFiltersCopyWithImpl<$Res>;
  @override
  $Res call({bool showFilters});
}

/// @nodoc
class __$ShowFiltersCopyWithImpl<$Res> extends _$ShowFiltersCopyWithImpl<$Res>
    implements _$ShowFiltersCopyWith<$Res> {
  __$ShowFiltersCopyWithImpl(
      _ShowFilters _value, $Res Function(_ShowFilters) _then)
      : super(_value, (v) => _then(v as _ShowFilters));

  @override
  _ShowFilters get _value => super._value as _ShowFilters;

  @override
  $Res call({
    Object showFilters = freezed,
  }) {
    return _then(_ShowFilters(
      showFilters == freezed ? _value.showFilters : showFilters as bool,
    ));
  }
}

/// @nodoc
class _$_ShowFilters implements _ShowFilters {
  const _$_ShowFilters(this.showFilters) : assert(showFilters != null);

  @override
  final bool showFilters;

  @override
  String toString() {
    return 'ShowFilters(showFilters: $showFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowFilters &&
            (identical(other.showFilters, showFilters) ||
                const DeepCollectionEquality()
                    .equals(other.showFilters, showFilters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showFilters);

  @override
  _$ShowFiltersCopyWith<_ShowFilters> get copyWith =>
      __$ShowFiltersCopyWithImpl<_ShowFilters>(this, _$identity);
}

abstract class _ShowFilters implements ShowFilters {
  const factory _ShowFilters(bool showFilters) = _$_ShowFilters;

  @override
  bool get showFilters;
  @override
  _$ShowFiltersCopyWith<_ShowFilters> get copyWith;
}
