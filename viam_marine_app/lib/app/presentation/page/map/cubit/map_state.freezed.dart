// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(double latitude, double longitude, double heading)
        loaded,
    required TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(double latitude, double longitude, double heading)?
        loaded,
    TResult? Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(double latitude, double longitude, double heading)? loaded,
    TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateLoading value) loading,
    required TResult Function(MapStateLoaded value) loaded,
    required TResult Function(MapStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateLoading value)? loading,
    TResult? Function(MapStateLoaded value)? loaded,
    TResult? Function(MapStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateLoading value)? loading,
    TResult Function(MapStateLoaded value)? loaded,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MapStateIdleCopyWith<$Res> {
  factory _$$MapStateIdleCopyWith(
          _$MapStateIdle value, $Res Function(_$MapStateIdle) then) =
      __$$MapStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapStateIdleCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateIdle>
    implements _$$MapStateIdleCopyWith<$Res> {
  __$$MapStateIdleCopyWithImpl(
      _$MapStateIdle _value, $Res Function(_$MapStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapStateIdle implements MapStateIdle {
  const _$MapStateIdle();

  @override
  String toString() {
    return 'MapState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(double latitude, double longitude, double heading)
        loaded,
    required TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)
        error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(double latitude, double longitude, double heading)?
        loaded,
    TResult? Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(double latitude, double longitude, double heading)? loaded,
    TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateLoading value) loading,
    required TResult Function(MapStateLoaded value) loaded,
    required TResult Function(MapStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateLoading value)? loading,
    TResult? Function(MapStateLoaded value)? loaded,
    TResult? Function(MapStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateLoading value)? loading,
    TResult Function(MapStateLoaded value)? loaded,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MapStateIdle implements MapState {
  const factory MapStateIdle() = _$MapStateIdle;
}

/// @nodoc
abstract class _$$MapStateLoadingCopyWith<$Res> {
  factory _$$MapStateLoadingCopyWith(
          _$MapStateLoading value, $Res Function(_$MapStateLoading) then) =
      __$$MapStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapStateLoadingCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateLoading>
    implements _$$MapStateLoadingCopyWith<$Res> {
  __$$MapStateLoadingCopyWithImpl(
      _$MapStateLoading _value, $Res Function(_$MapStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapStateLoading implements MapStateLoading {
  const _$MapStateLoading();

  @override
  String toString() {
    return 'MapState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(double latitude, double longitude, double heading)
        loaded,
    required TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(double latitude, double longitude, double heading)?
        loaded,
    TResult? Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(double latitude, double longitude, double heading)? loaded,
    TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateLoading value) loading,
    required TResult Function(MapStateLoaded value) loaded,
    required TResult Function(MapStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateLoading value)? loading,
    TResult? Function(MapStateLoaded value)? loaded,
    TResult? Function(MapStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateLoading value)? loading,
    TResult Function(MapStateLoaded value)? loaded,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MapStateLoading implements MapState {
  const factory MapStateLoading() = _$MapStateLoading;
}

/// @nodoc
abstract class _$$MapStateLoadedCopyWith<$Res> {
  factory _$$MapStateLoadedCopyWith(
          _$MapStateLoaded value, $Res Function(_$MapStateLoaded) then) =
      __$$MapStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class __$$MapStateLoadedCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateLoaded>
    implements _$$MapStateLoadedCopyWith<$Res> {
  __$$MapStateLoadedCopyWithImpl(
      _$MapStateLoaded _value, $Res Function(_$MapStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? heading = null,
  }) {
    return _then(_$MapStateLoaded(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MapStateLoaded implements MapStateLoaded {
  const _$MapStateLoaded(
      {required this.latitude, required this.longitude, required this.heading});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double heading;

  @override
  String toString() {
    return 'MapState.loaded(latitude: $latitude, longitude: $longitude, heading: $heading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateLoaded &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.heading, heading) || other.heading == heading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, heading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateLoadedCopyWith<_$MapStateLoaded> get copyWith =>
      __$$MapStateLoadedCopyWithImpl<_$MapStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(double latitude, double longitude, double heading)
        loaded,
    required TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)
        error,
  }) {
    return loaded(latitude, longitude, heading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(double latitude, double longitude, double heading)?
        loaded,
    TResult? Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
  }) {
    return loaded?.call(latitude, longitude, heading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(double latitude, double longitude, double heading)? loaded,
    TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(latitude, longitude, heading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateLoading value) loading,
    required TResult Function(MapStateLoaded value) loaded,
    required TResult Function(MapStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateLoading value)? loading,
    TResult? Function(MapStateLoaded value)? loaded,
    TResult? Function(MapStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateLoading value)? loading,
    TResult Function(MapStateLoaded value)? loaded,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MapStateLoaded implements MapState {
  const factory MapStateLoaded(
      {required final double latitude,
      required final double longitude,
      required final double heading}) = _$MapStateLoaded;

  double get latitude;
  double get longitude;
  double get heading;
  @JsonKey(ignore: true)
  _$$MapStateLoadedCopyWith<_$MapStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapStateErrorCopyWith<$Res> {
  factory _$$MapStateErrorCopyWith(
          _$MapStateError value, $Res Function(_$MapStateError) then) =
      __$$MapStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ViamError viamError,
      double? lastLatitude,
      double? lastLongitude,
      double? lastHeading});
}

/// @nodoc
class __$$MapStateErrorCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateError>
    implements _$$MapStateErrorCopyWith<$Res> {
  __$$MapStateErrorCopyWithImpl(
      _$MapStateError _value, $Res Function(_$MapStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viamError = null,
    Object? lastLatitude = freezed,
    Object? lastLongitude = freezed,
    Object? lastHeading = freezed,
  }) {
    return _then(_$MapStateError(
      null == viamError
          ? _value.viamError
          : viamError // ignore: cast_nullable_to_non_nullable
              as ViamError,
      freezed == lastLatitude
          ? _value.lastLatitude
          : lastLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == lastLongitude
          ? _value.lastLongitude
          : lastLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == lastHeading
          ? _value.lastHeading
          : lastHeading // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$MapStateError implements MapStateError {
  const _$MapStateError(
      this.viamError, this.lastLatitude, this.lastLongitude, this.lastHeading);

  @override
  final ViamError viamError;
  @override
  final double? lastLatitude;
  @override
  final double? lastLongitude;
  @override
  final double? lastHeading;

  @override
  String toString() {
    return 'MapState.error(viamError: $viamError, lastLatitude: $lastLatitude, lastLongitude: $lastLongitude, lastHeading: $lastHeading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateError &&
            (identical(other.viamError, viamError) ||
                other.viamError == viamError) &&
            (identical(other.lastLatitude, lastLatitude) ||
                other.lastLatitude == lastLatitude) &&
            (identical(other.lastLongitude, lastLongitude) ||
                other.lastLongitude == lastLongitude) &&
            (identical(other.lastHeading, lastHeading) ||
                other.lastHeading == lastHeading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, viamError, lastLatitude, lastLongitude, lastHeading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateErrorCopyWith<_$MapStateError> get copyWith =>
      __$$MapStateErrorCopyWithImpl<_$MapStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(double latitude, double longitude, double heading)
        loaded,
    required TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)
        error,
  }) {
    return error(viamError, lastLatitude, lastLongitude, lastHeading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(double latitude, double longitude, double heading)?
        loaded,
    TResult? Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
  }) {
    return error?.call(viamError, lastLatitude, lastLongitude, lastHeading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(double latitude, double longitude, double heading)? loaded,
    TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(viamError, lastLatitude, lastLongitude, lastHeading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapStateIdle value) idle,
    required TResult Function(MapStateLoading value) loading,
    required TResult Function(MapStateLoaded value) loaded,
    required TResult Function(MapStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapStateIdle value)? idle,
    TResult? Function(MapStateLoading value)? loading,
    TResult? Function(MapStateLoaded value)? loaded,
    TResult? Function(MapStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapStateIdle value)? idle,
    TResult Function(MapStateLoading value)? loading,
    TResult Function(MapStateLoaded value)? loaded,
    TResult Function(MapStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MapStateError implements MapState {
  const factory MapStateError(
      final ViamError viamError,
      final double? lastLatitude,
      final double? lastLongitude,
      final double? lastHeading) = _$MapStateError;

  ViamError get viamError;
  double? get lastLatitude;
  double? get lastLongitude;
  double? get lastHeading;
  @JsonKey(ignore: true)
  _$$MapStateErrorCopyWith<_$MapStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
