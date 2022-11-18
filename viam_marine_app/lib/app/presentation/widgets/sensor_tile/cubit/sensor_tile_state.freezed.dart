// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sensor_tile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SensorTileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            String name, double levelPercentage, double currentLevel)
        graphicalSensorLoaded,
    required TResult Function(String name, double value) sensorLoaded,
    required TResult Function() warning,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult? Function(String name, double value)? sensorLoaded,
    TResult? Function()? warning,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult Function(String name, double value)? sensorLoaded,
    TResult Function()? warning,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SensorTileStateIdle value) idle,
    required TResult Function(SensorTileStateGraphicalSensorLoaded value)
        graphicalSensorLoaded,
    required TResult Function(SensorTileStateLoaded value) sensorLoaded,
    required TResult Function(SensorTileStateWarning value) warning,
    required TResult Function(SensorTileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SensorTileStateIdle value)? idle,
    TResult? Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult? Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult? Function(SensorTileStateWarning value)? warning,
    TResult? Function(SensorTileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SensorTileStateIdle value)? idle,
    TResult Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult Function(SensorTileStateWarning value)? warning,
    TResult Function(SensorTileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorTileStateCopyWith<$Res> {
  factory $SensorTileStateCopyWith(
          SensorTileState value, $Res Function(SensorTileState) then) =
      _$SensorTileStateCopyWithImpl<$Res, SensorTileState>;
}

/// @nodoc
class _$SensorTileStateCopyWithImpl<$Res, $Val extends SensorTileState>
    implements $SensorTileStateCopyWith<$Res> {
  _$SensorTileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SensorTileStateIdleCopyWith<$Res> {
  factory _$$SensorTileStateIdleCopyWith(_$SensorTileStateIdle value,
          $Res Function(_$SensorTileStateIdle) then) =
      __$$SensorTileStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SensorTileStateIdleCopyWithImpl<$Res>
    extends _$SensorTileStateCopyWithImpl<$Res, _$SensorTileStateIdle>
    implements _$$SensorTileStateIdleCopyWith<$Res> {
  __$$SensorTileStateIdleCopyWithImpl(
      _$SensorTileStateIdle _value, $Res Function(_$SensorTileStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SensorTileStateIdle implements SensorTileStateIdle {
  const _$SensorTileStateIdle();

  @override
  String toString() {
    return 'SensorTileState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SensorTileStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            String name, double levelPercentage, double currentLevel)
        graphicalSensorLoaded,
    required TResult Function(String name, double value) sensorLoaded,
    required TResult Function() warning,
    required TResult Function() error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult? Function(String name, double value)? sensorLoaded,
    TResult? Function()? warning,
    TResult? Function()? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult Function(String name, double value)? sensorLoaded,
    TResult Function()? warning,
    TResult Function()? error,
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
    required TResult Function(SensorTileStateIdle value) idle,
    required TResult Function(SensorTileStateGraphicalSensorLoaded value)
        graphicalSensorLoaded,
    required TResult Function(SensorTileStateLoaded value) sensorLoaded,
    required TResult Function(SensorTileStateWarning value) warning,
    required TResult Function(SensorTileStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SensorTileStateIdle value)? idle,
    TResult? Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult? Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult? Function(SensorTileStateWarning value)? warning,
    TResult? Function(SensorTileStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SensorTileStateIdle value)? idle,
    TResult Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult Function(SensorTileStateWarning value)? warning,
    TResult Function(SensorTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class SensorTileStateIdle implements SensorTileState {
  const factory SensorTileStateIdle() = _$SensorTileStateIdle;
}

/// @nodoc
abstract class _$$SensorTileStateGraphicalSensorLoadedCopyWith<$Res> {
  factory _$$SensorTileStateGraphicalSensorLoadedCopyWith(
          _$SensorTileStateGraphicalSensorLoaded value,
          $Res Function(_$SensorTileStateGraphicalSensorLoaded) then) =
      __$$SensorTileStateGraphicalSensorLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, double levelPercentage, double currentLevel});
}

/// @nodoc
class __$$SensorTileStateGraphicalSensorLoadedCopyWithImpl<$Res>
    extends _$SensorTileStateCopyWithImpl<$Res,
        _$SensorTileStateGraphicalSensorLoaded>
    implements _$$SensorTileStateGraphicalSensorLoadedCopyWith<$Res> {
  __$$SensorTileStateGraphicalSensorLoadedCopyWithImpl(
      _$SensorTileStateGraphicalSensorLoaded _value,
      $Res Function(_$SensorTileStateGraphicalSensorLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? levelPercentage = null,
    Object? currentLevel = null,
  }) {
    return _then(_$SensorTileStateGraphicalSensorLoaded(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == levelPercentage
          ? _value.levelPercentage
          : levelPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SensorTileStateGraphicalSensorLoaded
    implements SensorTileStateGraphicalSensorLoaded {
  const _$SensorTileStateGraphicalSensorLoaded(
      this.name, this.levelPercentage, this.currentLevel);

  @override
  final String name;
  @override
  final double levelPercentage;
  @override
  final double currentLevel;

  @override
  String toString() {
    return 'SensorTileState.graphicalSensorLoaded(name: $name, levelPercentage: $levelPercentage, currentLevel: $currentLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorTileStateGraphicalSensorLoaded &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.levelPercentage, levelPercentage) ||
                other.levelPercentage == levelPercentage) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, levelPercentage, currentLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorTileStateGraphicalSensorLoadedCopyWith<
          _$SensorTileStateGraphicalSensorLoaded>
      get copyWith => __$$SensorTileStateGraphicalSensorLoadedCopyWithImpl<
          _$SensorTileStateGraphicalSensorLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            String name, double levelPercentage, double currentLevel)
        graphicalSensorLoaded,
    required TResult Function(String name, double value) sensorLoaded,
    required TResult Function() warning,
    required TResult Function() error,
  }) {
    return graphicalSensorLoaded(name, levelPercentage, currentLevel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult? Function(String name, double value)? sensorLoaded,
    TResult? Function()? warning,
    TResult? Function()? error,
  }) {
    return graphicalSensorLoaded?.call(name, levelPercentage, currentLevel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult Function(String name, double value)? sensorLoaded,
    TResult Function()? warning,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (graphicalSensorLoaded != null) {
      return graphicalSensorLoaded(name, levelPercentage, currentLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SensorTileStateIdle value) idle,
    required TResult Function(SensorTileStateGraphicalSensorLoaded value)
        graphicalSensorLoaded,
    required TResult Function(SensorTileStateLoaded value) sensorLoaded,
    required TResult Function(SensorTileStateWarning value) warning,
    required TResult Function(SensorTileStateError value) error,
  }) {
    return graphicalSensorLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SensorTileStateIdle value)? idle,
    TResult? Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult? Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult? Function(SensorTileStateWarning value)? warning,
    TResult? Function(SensorTileStateError value)? error,
  }) {
    return graphicalSensorLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SensorTileStateIdle value)? idle,
    TResult Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult Function(SensorTileStateWarning value)? warning,
    TResult Function(SensorTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (graphicalSensorLoaded != null) {
      return graphicalSensorLoaded(this);
    }
    return orElse();
  }
}

abstract class SensorTileStateGraphicalSensorLoaded implements SensorTileState {
  const factory SensorTileStateGraphicalSensorLoaded(
      final String name,
      final double levelPercentage,
      final double currentLevel) = _$SensorTileStateGraphicalSensorLoaded;

  String get name;
  double get levelPercentage;
  double get currentLevel;
  @JsonKey(ignore: true)
  _$$SensorTileStateGraphicalSensorLoadedCopyWith<
          _$SensorTileStateGraphicalSensorLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SensorTileStateLoadedCopyWith<$Res> {
  factory _$$SensorTileStateLoadedCopyWith(_$SensorTileStateLoaded value,
          $Res Function(_$SensorTileStateLoaded) then) =
      __$$SensorTileStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, double value});
}

/// @nodoc
class __$$SensorTileStateLoadedCopyWithImpl<$Res>
    extends _$SensorTileStateCopyWithImpl<$Res, _$SensorTileStateLoaded>
    implements _$$SensorTileStateLoadedCopyWith<$Res> {
  __$$SensorTileStateLoadedCopyWithImpl(_$SensorTileStateLoaded _value,
      $Res Function(_$SensorTileStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$SensorTileStateLoaded(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SensorTileStateLoaded implements SensorTileStateLoaded {
  const _$SensorTileStateLoaded(this.name, this.value);

  @override
  final String name;
  @override
  final double value;

  @override
  String toString() {
    return 'SensorTileState.sensorLoaded(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorTileStateLoaded &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorTileStateLoadedCopyWith<_$SensorTileStateLoaded> get copyWith =>
      __$$SensorTileStateLoadedCopyWithImpl<_$SensorTileStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            String name, double levelPercentage, double currentLevel)
        graphicalSensorLoaded,
    required TResult Function(String name, double value) sensorLoaded,
    required TResult Function() warning,
    required TResult Function() error,
  }) {
    return sensorLoaded(name, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult? Function(String name, double value)? sensorLoaded,
    TResult? Function()? warning,
    TResult? Function()? error,
  }) {
    return sensorLoaded?.call(name, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult Function(String name, double value)? sensorLoaded,
    TResult Function()? warning,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (sensorLoaded != null) {
      return sensorLoaded(name, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SensorTileStateIdle value) idle,
    required TResult Function(SensorTileStateGraphicalSensorLoaded value)
        graphicalSensorLoaded,
    required TResult Function(SensorTileStateLoaded value) sensorLoaded,
    required TResult Function(SensorTileStateWarning value) warning,
    required TResult Function(SensorTileStateError value) error,
  }) {
    return sensorLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SensorTileStateIdle value)? idle,
    TResult? Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult? Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult? Function(SensorTileStateWarning value)? warning,
    TResult? Function(SensorTileStateError value)? error,
  }) {
    return sensorLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SensorTileStateIdle value)? idle,
    TResult Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult Function(SensorTileStateWarning value)? warning,
    TResult Function(SensorTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (sensorLoaded != null) {
      return sensorLoaded(this);
    }
    return orElse();
  }
}

abstract class SensorTileStateLoaded implements SensorTileState {
  const factory SensorTileStateLoaded(final String name, final double value) =
      _$SensorTileStateLoaded;

  String get name;
  double get value;
  @JsonKey(ignore: true)
  _$$SensorTileStateLoadedCopyWith<_$SensorTileStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SensorTileStateWarningCopyWith<$Res> {
  factory _$$SensorTileStateWarningCopyWith(_$SensorTileStateWarning value,
          $Res Function(_$SensorTileStateWarning) then) =
      __$$SensorTileStateWarningCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SensorTileStateWarningCopyWithImpl<$Res>
    extends _$SensorTileStateCopyWithImpl<$Res, _$SensorTileStateWarning>
    implements _$$SensorTileStateWarningCopyWith<$Res> {
  __$$SensorTileStateWarningCopyWithImpl(_$SensorTileStateWarning _value,
      $Res Function(_$SensorTileStateWarning) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SensorTileStateWarning implements SensorTileStateWarning {
  const _$SensorTileStateWarning();

  @override
  String toString() {
    return 'SensorTileState.warning()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SensorTileStateWarning);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            String name, double levelPercentage, double currentLevel)
        graphicalSensorLoaded,
    required TResult Function(String name, double value) sensorLoaded,
    required TResult Function() warning,
    required TResult Function() error,
  }) {
    return warning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult? Function(String name, double value)? sensorLoaded,
    TResult? Function()? warning,
    TResult? Function()? error,
  }) {
    return warning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult Function(String name, double value)? sensorLoaded,
    TResult Function()? warning,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SensorTileStateIdle value) idle,
    required TResult Function(SensorTileStateGraphicalSensorLoaded value)
        graphicalSensorLoaded,
    required TResult Function(SensorTileStateLoaded value) sensorLoaded,
    required TResult Function(SensorTileStateWarning value) warning,
    required TResult Function(SensorTileStateError value) error,
  }) {
    return warning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SensorTileStateIdle value)? idle,
    TResult? Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult? Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult? Function(SensorTileStateWarning value)? warning,
    TResult? Function(SensorTileStateError value)? error,
  }) {
    return warning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SensorTileStateIdle value)? idle,
    TResult Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult Function(SensorTileStateWarning value)? warning,
    TResult Function(SensorTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(this);
    }
    return orElse();
  }
}

abstract class SensorTileStateWarning implements SensorTileState {
  const factory SensorTileStateWarning() = _$SensorTileStateWarning;
}

/// @nodoc
abstract class _$$SensorTileStateErrorCopyWith<$Res> {
  factory _$$SensorTileStateErrorCopyWith(_$SensorTileStateError value,
          $Res Function(_$SensorTileStateError) then) =
      __$$SensorTileStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SensorTileStateErrorCopyWithImpl<$Res>
    extends _$SensorTileStateCopyWithImpl<$Res, _$SensorTileStateError>
    implements _$$SensorTileStateErrorCopyWith<$Res> {
  __$$SensorTileStateErrorCopyWithImpl(_$SensorTileStateError _value,
      $Res Function(_$SensorTileStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SensorTileStateError implements SensorTileStateError {
  const _$SensorTileStateError();

  @override
  String toString() {
    return 'SensorTileState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SensorTileStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            String name, double levelPercentage, double currentLevel)
        graphicalSensorLoaded,
    required TResult Function(String name, double value) sensorLoaded,
    required TResult Function() warning,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult? Function(String name, double value)? sensorLoaded,
    TResult? Function()? warning,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, double levelPercentage, double currentLevel)?
        graphicalSensorLoaded,
    TResult Function(String name, double value)? sensorLoaded,
    TResult Function()? warning,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SensorTileStateIdle value) idle,
    required TResult Function(SensorTileStateGraphicalSensorLoaded value)
        graphicalSensorLoaded,
    required TResult Function(SensorTileStateLoaded value) sensorLoaded,
    required TResult Function(SensorTileStateWarning value) warning,
    required TResult Function(SensorTileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SensorTileStateIdle value)? idle,
    TResult? Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult? Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult? Function(SensorTileStateWarning value)? warning,
    TResult? Function(SensorTileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SensorTileStateIdle value)? idle,
    TResult Function(SensorTileStateGraphicalSensorLoaded value)?
        graphicalSensorLoaded,
    TResult Function(SensorTileStateLoaded value)? sensorLoaded,
    TResult Function(SensorTileStateWarning value)? warning,
    TResult Function(SensorTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SensorTileStateError implements SensorTileState {
  const factory SensorTileStateError() = _$SensorTileStateError;
}
