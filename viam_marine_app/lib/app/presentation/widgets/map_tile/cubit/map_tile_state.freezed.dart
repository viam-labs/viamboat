// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_tile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapTileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
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
    TResult Function(double latitude, double longitude, double heading)? loaded,
    TResult Function(ViamError viamError, double? lastLatitude,
            double? lastLongitude, double? lastHeading)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapTileStateIdle value) idle,
    required TResult Function(MapTileStateLoaded value) loaded,
    required TResult Function(MapTileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapTileStateIdle value)? idle,
    TResult? Function(MapTileStateLoaded value)? loaded,
    TResult? Function(MapTileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapTileStateIdle value)? idle,
    TResult Function(MapTileStateLoaded value)? loaded,
    TResult Function(MapTileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapTileStateCopyWith<$Res> {
  factory $MapTileStateCopyWith(
          MapTileState value, $Res Function(MapTileState) then) =
      _$MapTileStateCopyWithImpl<$Res, MapTileState>;
}

/// @nodoc
class _$MapTileStateCopyWithImpl<$Res, $Val extends MapTileState>
    implements $MapTileStateCopyWith<$Res> {
  _$MapTileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MapTileStateIdleCopyWith<$Res> {
  factory _$$MapTileStateIdleCopyWith(
          _$MapTileStateIdle value, $Res Function(_$MapTileStateIdle) then) =
      __$$MapTileStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapTileStateIdleCopyWithImpl<$Res>
    extends _$MapTileStateCopyWithImpl<$Res, _$MapTileStateIdle>
    implements _$$MapTileStateIdleCopyWith<$Res> {
  __$$MapTileStateIdleCopyWithImpl(
      _$MapTileStateIdle _value, $Res Function(_$MapTileStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MapTileStateIdle implements MapTileStateIdle {
  const _$MapTileStateIdle();

  @override
  String toString() {
    return 'MapTileState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapTileStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
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
    required TResult Function(MapTileStateIdle value) idle,
    required TResult Function(MapTileStateLoaded value) loaded,
    required TResult Function(MapTileStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapTileStateIdle value)? idle,
    TResult? Function(MapTileStateLoaded value)? loaded,
    TResult? Function(MapTileStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapTileStateIdle value)? idle,
    TResult Function(MapTileStateLoaded value)? loaded,
    TResult Function(MapTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MapTileStateIdle implements MapTileState {
  const factory MapTileStateIdle() = _$MapTileStateIdle;
}

/// @nodoc
abstract class _$$MapTileStateLoadedCopyWith<$Res> {
  factory _$$MapTileStateLoadedCopyWith(_$MapTileStateLoaded value,
          $Res Function(_$MapTileStateLoaded) then) =
      __$$MapTileStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class __$$MapTileStateLoadedCopyWithImpl<$Res>
    extends _$MapTileStateCopyWithImpl<$Res, _$MapTileStateLoaded>
    implements _$$MapTileStateLoadedCopyWith<$Res> {
  __$$MapTileStateLoadedCopyWithImpl(
      _$MapTileStateLoaded _value, $Res Function(_$MapTileStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? heading = null,
  }) {
    return _then(_$MapTileStateLoaded(
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

class _$MapTileStateLoaded implements MapTileStateLoaded {
  const _$MapTileStateLoaded(
      {required this.latitude, required this.longitude, required this.heading});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double heading;

  @override
  String toString() {
    return 'MapTileState.loaded(latitude: $latitude, longitude: $longitude, heading: $heading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTileStateLoaded &&
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
  _$$MapTileStateLoadedCopyWith<_$MapTileStateLoaded> get copyWith =>
      __$$MapTileStateLoadedCopyWithImpl<_$MapTileStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
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
    required TResult Function(MapTileStateIdle value) idle,
    required TResult Function(MapTileStateLoaded value) loaded,
    required TResult Function(MapTileStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapTileStateIdle value)? idle,
    TResult? Function(MapTileStateLoaded value)? loaded,
    TResult? Function(MapTileStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapTileStateIdle value)? idle,
    TResult Function(MapTileStateLoaded value)? loaded,
    TResult Function(MapTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MapTileStateLoaded implements MapTileState {
  const factory MapTileStateLoaded(
      {required final double latitude,
      required final double longitude,
      required final double heading}) = _$MapTileStateLoaded;

  double get latitude;
  double get longitude;
  double get heading;
  @JsonKey(ignore: true)
  _$$MapTileStateLoadedCopyWith<_$MapTileStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapTileStateErrorCopyWith<$Res> {
  factory _$$MapTileStateErrorCopyWith(
          _$MapTileStateError value, $Res Function(_$MapTileStateError) then) =
      __$$MapTileStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ViamError viamError,
      double? lastLatitude,
      double? lastLongitude,
      double? lastHeading});
}

/// @nodoc
class __$$MapTileStateErrorCopyWithImpl<$Res>
    extends _$MapTileStateCopyWithImpl<$Res, _$MapTileStateError>
    implements _$$MapTileStateErrorCopyWith<$Res> {
  __$$MapTileStateErrorCopyWithImpl(
      _$MapTileStateError _value, $Res Function(_$MapTileStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viamError = null,
    Object? lastLatitude = freezed,
    Object? lastLongitude = freezed,
    Object? lastHeading = freezed,
  }) {
    return _then(_$MapTileStateError(
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

class _$MapTileStateError implements MapTileStateError {
  const _$MapTileStateError(
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
    return 'MapTileState.error(viamError: $viamError, lastLatitude: $lastLatitude, lastLongitude: $lastLongitude, lastHeading: $lastHeading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTileStateError &&
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
  _$$MapTileStateErrorCopyWith<_$MapTileStateError> get copyWith =>
      __$$MapTileStateErrorCopyWithImpl<_$MapTileStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
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
    required TResult Function(MapTileStateIdle value) idle,
    required TResult Function(MapTileStateLoaded value) loaded,
    required TResult Function(MapTileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapTileStateIdle value)? idle,
    TResult? Function(MapTileStateLoaded value)? loaded,
    TResult? Function(MapTileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapTileStateIdle value)? idle,
    TResult Function(MapTileStateLoaded value)? loaded,
    TResult Function(MapTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MapTileStateError implements MapTileState {
  const factory MapTileStateError(
      final ViamError viamError,
      final double? lastLatitude,
      final double? lastLongitude,
      final double? lastHeading) = _$MapTileStateError;

  ViamError get viamError;
  double? get lastLatitude;
  double? get lastLongitude;
  double? get lastHeading;
  @JsonKey(ignore: true)
  _$$MapTileStateErrorCopyWith<_$MapTileStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
