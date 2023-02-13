// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)
        loaded,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateIdle value) idle,
    required TResult Function(MainstateLoading value) loading,
    required TResult Function(MainStateLaoded value) loaded,
    required TResult Function(MainStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateIdle value)? idle,
    TResult? Function(MainstateLoading value)? loading,
    TResult? Function(MainStateLaoded value)? loaded,
    TResult? Function(MainStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateIdle value)? idle,
    TResult Function(MainstateLoading value)? loading,
    TResult Function(MainStateLaoded value)? loaded,
    TResult Function(MainStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainStateIdleCopyWith<$Res> {
  factory _$$MainStateIdleCopyWith(
          _$MainStateIdle value, $Res Function(_$MainStateIdle) then) =
      __$$MainStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateIdleCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateIdle>
    implements _$$MainStateIdleCopyWith<$Res> {
  __$$MainStateIdleCopyWithImpl(
      _$MainStateIdle _value, $Res Function(_$MainStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainStateIdle implements MainStateIdle {
  const _$MainStateIdle();

  @override
  String toString() {
    return 'MainState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)
        loaded,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult Function(String? message)? error,
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
    required TResult Function(MainStateIdle value) idle,
    required TResult Function(MainstateLoading value) loading,
    required TResult Function(MainStateLaoded value) loaded,
    required TResult Function(MainStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateIdle value)? idle,
    TResult? Function(MainstateLoading value)? loading,
    TResult? Function(MainStateLaoded value)? loaded,
    TResult? Function(MainStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateIdle value)? idle,
    TResult Function(MainstateLoading value)? loading,
    TResult Function(MainStateLaoded value)? loaded,
    TResult Function(MainStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MainStateIdle implements MainState {
  const factory MainStateIdle() = _$MainStateIdle;
}

/// @nodoc
abstract class _$$MainstateLoadingCopyWith<$Res> {
  factory _$$MainstateLoadingCopyWith(
          _$MainstateLoading value, $Res Function(_$MainstateLoading) then) =
      __$$MainstateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainstateLoadingCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainstateLoading>
    implements _$$MainstateLoadingCopyWith<$Res> {
  __$$MainstateLoadingCopyWithImpl(
      _$MainstateLoading _value, $Res Function(_$MainstateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainstateLoading implements MainstateLoading {
  const _$MainstateLoading();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainstateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)
        loaded,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult Function(String? message)? error,
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
    required TResult Function(MainStateIdle value) idle,
    required TResult Function(MainstateLoading value) loading,
    required TResult Function(MainStateLaoded value) loaded,
    required TResult Function(MainStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateIdle value)? idle,
    TResult? Function(MainstateLoading value)? loading,
    TResult? Function(MainStateLaoded value)? loaded,
    TResult? Function(MainStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateIdle value)? idle,
    TResult Function(MainstateLoading value)? loading,
    TResult Function(MainStateLaoded value)? loaded,
    TResult Function(MainStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainstateLoading implements MainState {
  const factory MainstateLoading() = _$MainstateLoading;
}

/// @nodoc
abstract class _$$MainStateLaodedCopyWith<$Res> {
  factory _$$MainStateLaodedCopyWith(
          _$MainStateLaoded value, $Res Function(_$MainStateLaoded) then) =
      __$$MainStateLaodedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ViamAppResourceName> sensors,
      List<ViamAppResourceName> positionSensors,
      List<ViamAppResourceName> cameraSensors});
}

/// @nodoc
class __$$MainStateLaodedCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateLaoded>
    implements _$$MainStateLaodedCopyWith<$Res> {
  __$$MainStateLaodedCopyWithImpl(
      _$MainStateLaoded _value, $Res Function(_$MainStateLaoded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensors = null,
    Object? positionSensors = null,
    Object? cameraSensors = null,
  }) {
    return _then(_$MainStateLaoded(
      null == sensors
          ? _value._sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<ViamAppResourceName>,
      null == positionSensors
          ? _value._positionSensors
          : positionSensors // ignore: cast_nullable_to_non_nullable
              as List<ViamAppResourceName>,
      null == cameraSensors
          ? _value._cameraSensors
          : cameraSensors // ignore: cast_nullable_to_non_nullable
              as List<ViamAppResourceName>,
    ));
  }
}

/// @nodoc

class _$MainStateLaoded implements MainStateLaoded {
  const _$MainStateLaoded(
      final List<ViamAppResourceName> sensors,
      final List<ViamAppResourceName> positionSensors,
      final List<ViamAppResourceName> cameraSensors)
      : _sensors = sensors,
        _positionSensors = positionSensors,
        _cameraSensors = cameraSensors;

  final List<ViamAppResourceName> _sensors;
  @override
  List<ViamAppResourceName> get sensors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sensors);
  }

  final List<ViamAppResourceName> _positionSensors;
  @override
  List<ViamAppResourceName> get positionSensors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positionSensors);
  }

  final List<ViamAppResourceName> _cameraSensors;
  @override
  List<ViamAppResourceName> get cameraSensors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameraSensors);
  }

  @override
  String toString() {
    return 'MainState.loaded(sensors: $sensors, positionSensors: $positionSensors, cameraSensors: $cameraSensors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateLaoded &&
            const DeepCollectionEquality().equals(other._sensors, _sensors) &&
            const DeepCollectionEquality()
                .equals(other._positionSensors, _positionSensors) &&
            const DeepCollectionEquality()
                .equals(other._cameraSensors, _cameraSensors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sensors),
      const DeepCollectionEquality().hash(_positionSensors),
      const DeepCollectionEquality().hash(_cameraSensors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateLaodedCopyWith<_$MainStateLaoded> get copyWith =>
      __$$MainStateLaodedCopyWithImpl<_$MainStateLaoded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)
        loaded,
    required TResult Function(String? message) error,
  }) {
    return loaded(sensors, positionSensors, cameraSensors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult? Function(String? message)? error,
  }) {
    return loaded?.call(sensors, positionSensors, cameraSensors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(sensors, positionSensors, cameraSensors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateIdle value) idle,
    required TResult Function(MainstateLoading value) loading,
    required TResult Function(MainStateLaoded value) loaded,
    required TResult Function(MainStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateIdle value)? idle,
    TResult? Function(MainstateLoading value)? loading,
    TResult? Function(MainStateLaoded value)? loaded,
    TResult? Function(MainStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateIdle value)? idle,
    TResult Function(MainstateLoading value)? loading,
    TResult Function(MainStateLaoded value)? loaded,
    TResult Function(MainStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MainStateLaoded implements MainState {
  const factory MainStateLaoded(
      final List<ViamAppResourceName> sensors,
      final List<ViamAppResourceName> positionSensors,
      final List<ViamAppResourceName> cameraSensors) = _$MainStateLaoded;

  List<ViamAppResourceName> get sensors;
  List<ViamAppResourceName> get positionSensors;
  List<ViamAppResourceName> get cameraSensors;
  @JsonKey(ignore: true)
  _$$MainStateLaodedCopyWith<_$MainStateLaoded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainStateErrorCopyWith<$Res> {
  factory _$$MainStateErrorCopyWith(
          _$MainStateError value, $Res Function(_$MainStateError) then) =
      __$$MainStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$MainStateErrorCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateError>
    implements _$$MainStateErrorCopyWith<$Res> {
  __$$MainStateErrorCopyWithImpl(
      _$MainStateError _value, $Res Function(_$MainStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MainStateError(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MainStateError implements MainStateError {
  const _$MainStateError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'MainState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateErrorCopyWith<_$MainStateError> get copyWith =>
      __$$MainStateErrorCopyWithImpl<_$MainStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)
        loaded,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppResourceName> sensors,
            List<ViamAppResourceName> positionSensors,
            List<ViamAppResourceName> cameraSensors)?
        loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateIdle value) idle,
    required TResult Function(MainstateLoading value) loading,
    required TResult Function(MainStateLaoded value) loaded,
    required TResult Function(MainStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateIdle value)? idle,
    TResult? Function(MainstateLoading value)? loading,
    TResult? Function(MainStateLaoded value)? loaded,
    TResult? Function(MainStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateIdle value)? idle,
    TResult Function(MainstateLoading value)? loading,
    TResult Function(MainStateLaoded value)? loaded,
    TResult Function(MainStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MainStateError implements MainState {
  const factory MainStateError([final String? message]) = _$MainStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$MainStateErrorCopyWith<_$MainStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
