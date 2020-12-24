// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of cancel_filters;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CancelFiltersTearOff {
  const _$CancelFiltersTearOff();

// ignore: unused_element
  _CancelFilters call(bool cancelFilters) {
    return _CancelFilters(
      cancelFilters,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CancelFilters = _$CancelFiltersTearOff();

/// @nodoc
mixin _$CancelFilters {
  bool get cancelFilters;

  $CancelFiltersCopyWith<CancelFilters> get copyWith;
}

/// @nodoc
abstract class $CancelFiltersCopyWith<$Res> {
  factory $CancelFiltersCopyWith(
          CancelFilters value, $Res Function(CancelFilters) then) =
      _$CancelFiltersCopyWithImpl<$Res>;
  $Res call({bool cancelFilters});
}

/// @nodoc
class _$CancelFiltersCopyWithImpl<$Res>
    implements $CancelFiltersCopyWith<$Res> {
  _$CancelFiltersCopyWithImpl(this._value, this._then);

  final CancelFilters _value;
  // ignore: unused_field
  final $Res Function(CancelFilters) _then;

  @override
  $Res call({
    Object cancelFilters = freezed,
  }) {
    return _then(_value.copyWith(
      cancelFilters: cancelFilters == freezed
          ? _value.cancelFilters
          : cancelFilters as bool,
    ));
  }
}

/// @nodoc
abstract class _$CancelFiltersCopyWith<$Res>
    implements $CancelFiltersCopyWith<$Res> {
  factory _$CancelFiltersCopyWith(
          _CancelFilters value, $Res Function(_CancelFilters) then) =
      __$CancelFiltersCopyWithImpl<$Res>;
  @override
  $Res call({bool cancelFilters});
}

/// @nodoc
class __$CancelFiltersCopyWithImpl<$Res>
    extends _$CancelFiltersCopyWithImpl<$Res>
    implements _$CancelFiltersCopyWith<$Res> {
  __$CancelFiltersCopyWithImpl(
      _CancelFilters _value, $Res Function(_CancelFilters) _then)
      : super(_value, (v) => _then(v as _CancelFilters));

  @override
  _CancelFilters get _value => super._value as _CancelFilters;

  @override
  $Res call({
    Object cancelFilters = freezed,
  }) {
    return _then(_CancelFilters(
      cancelFilters == freezed ? _value.cancelFilters : cancelFilters as bool,
    ));
  }
}

/// @nodoc
class _$_CancelFilters implements _CancelFilters {
  const _$_CancelFilters(this.cancelFilters) : assert(cancelFilters != null);

  @override
  final bool cancelFilters;

  @override
  String toString() {
    return 'CancelFilters(cancelFilters: $cancelFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelFilters &&
            (identical(other.cancelFilters, cancelFilters) ||
                const DeepCollectionEquality()
                    .equals(other.cancelFilters, cancelFilters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cancelFilters);

  @override
  _$CancelFiltersCopyWith<_CancelFilters> get copyWith =>
      __$CancelFiltersCopyWithImpl<_CancelFilters>(this, _$identity);
}

abstract class _CancelFilters implements CancelFilters {
  const factory _CancelFilters(bool cancelFilters) = _$_CancelFilters;

  @override
  bool get cancelFilters;
  @override
  _$CancelFiltersCopyWith<_CancelFilters> get copyWith;
}
