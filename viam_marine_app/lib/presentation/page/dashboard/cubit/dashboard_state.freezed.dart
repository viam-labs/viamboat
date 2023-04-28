// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String currentBoatName) loaded,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String currentBoatName)? loaded,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String currentBoatName)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStateIdle value) idle,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateLoaded value) loaded,
    required TResult Function(DashboardStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardStateIdle value)? idle,
    TResult? Function(DashboardStateLoading value)? loading,
    TResult? Function(DashboardStateLoaded value)? loaded,
    TResult? Function(DashboardStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateIdle value)? idle,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateLoaded value)? loaded,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DashboardStateIdleCopyWith<$Res> {
  factory _$$DashboardStateIdleCopyWith(_$DashboardStateIdle value,
          $Res Function(_$DashboardStateIdle) then) =
      __$$DashboardStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardStateIdleCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateIdle>
    implements _$$DashboardStateIdleCopyWith<$Res> {
  __$$DashboardStateIdleCopyWithImpl(
      _$DashboardStateIdle _value, $Res Function(_$DashboardStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardStateIdle implements DashboardStateIdle {
  const _$DashboardStateIdle();

  @override
  String toString() {
    return 'DashboardState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String currentBoatName) loaded,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String currentBoatName)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String currentBoatName)? loaded,
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
    required TResult Function(DashboardStateIdle value) idle,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateLoaded value) loaded,
    required TResult Function(DashboardStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardStateIdle value)? idle,
    TResult? Function(DashboardStateLoading value)? loading,
    TResult? Function(DashboardStateLoaded value)? loaded,
    TResult? Function(DashboardStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateIdle value)? idle,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateLoaded value)? loaded,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class DashboardStateIdle implements DashboardState {
  const factory DashboardStateIdle() = _$DashboardStateIdle;
}

/// @nodoc
abstract class _$$DashboardStateLoadingCopyWith<$Res> {
  factory _$$DashboardStateLoadingCopyWith(_$DashboardStateLoading value,
          $Res Function(_$DashboardStateLoading) then) =
      __$$DashboardStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardStateLoadingCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateLoading>
    implements _$$DashboardStateLoadingCopyWith<$Res> {
  __$$DashboardStateLoadingCopyWithImpl(_$DashboardStateLoading _value,
      $Res Function(_$DashboardStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardStateLoading implements DashboardStateLoading {
  const _$DashboardStateLoading();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String currentBoatName) loaded,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String currentBoatName)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String currentBoatName)? loaded,
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
    required TResult Function(DashboardStateIdle value) idle,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateLoaded value) loaded,
    required TResult Function(DashboardStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardStateIdle value)? idle,
    TResult? Function(DashboardStateLoading value)? loading,
    TResult? Function(DashboardStateLoaded value)? loaded,
    TResult? Function(DashboardStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateIdle value)? idle,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateLoaded value)? loaded,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DashboardStateLoading implements DashboardState {
  const factory DashboardStateLoading() = _$DashboardStateLoading;
}

/// @nodoc
abstract class _$$DashboardStateLoadedCopyWith<$Res> {
  factory _$$DashboardStateLoadedCopyWith(_$DashboardStateLoaded value,
          $Res Function(_$DashboardStateLoaded) then) =
      __$$DashboardStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentBoatName});
}

/// @nodoc
class __$$DashboardStateLoadedCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateLoaded>
    implements _$$DashboardStateLoadedCopyWith<$Res> {
  __$$DashboardStateLoadedCopyWithImpl(_$DashboardStateLoaded _value,
      $Res Function(_$DashboardStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBoatName = null,
  }) {
    return _then(_$DashboardStateLoaded(
      null == currentBoatName
          ? _value.currentBoatName
          : currentBoatName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DashboardStateLoaded implements DashboardStateLoaded {
  const _$DashboardStateLoaded(this.currentBoatName);

  @override
  final String currentBoatName;

  @override
  String toString() {
    return 'DashboardState.loaded(currentBoatName: $currentBoatName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateLoaded &&
            (identical(other.currentBoatName, currentBoatName) ||
                other.currentBoatName == currentBoatName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentBoatName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateLoadedCopyWith<_$DashboardStateLoaded> get copyWith =>
      __$$DashboardStateLoadedCopyWithImpl<_$DashboardStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String currentBoatName) loaded,
    required TResult Function(String? message) error,
  }) {
    return loaded(currentBoatName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String currentBoatName)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loaded?.call(currentBoatName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String currentBoatName)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentBoatName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStateIdle value) idle,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateLoaded value) loaded,
    required TResult Function(DashboardStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardStateIdle value)? idle,
    TResult? Function(DashboardStateLoading value)? loading,
    TResult? Function(DashboardStateLoaded value)? loaded,
    TResult? Function(DashboardStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateIdle value)? idle,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateLoaded value)? loaded,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DashboardStateLoaded implements DashboardState {
  const factory DashboardStateLoaded(final String currentBoatName) =
      _$DashboardStateLoaded;

  String get currentBoatName;
  @JsonKey(ignore: true)
  _$$DashboardStateLoadedCopyWith<_$DashboardStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DashboardStateErrorCopyWith<$Res> {
  factory _$$DashboardStateErrorCopyWith(_$DashboardStateError value,
          $Res Function(_$DashboardStateError) then) =
      __$$DashboardStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DashboardStateErrorCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateError>
    implements _$$DashboardStateErrorCopyWith<$Res> {
  __$$DashboardStateErrorCopyWithImpl(
      _$DashboardStateError _value, $Res Function(_$DashboardStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DashboardStateError(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DashboardStateError implements DashboardStateError {
  const _$DashboardStateError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'DashboardState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateErrorCopyWith<_$DashboardStateError> get copyWith =>
      __$$DashboardStateErrorCopyWithImpl<_$DashboardStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String currentBoatName) loaded,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String currentBoatName)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String currentBoatName)? loaded,
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
    required TResult Function(DashboardStateIdle value) idle,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateLoaded value) loaded,
    required TResult Function(DashboardStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardStateIdle value)? idle,
    TResult? Function(DashboardStateLoading value)? loading,
    TResult? Function(DashboardStateLoaded value)? loaded,
    TResult? Function(DashboardStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateIdle value)? idle,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateLoaded value)? loaded,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DashboardStateError implements DashboardState {
  const factory DashboardStateError([final String? message]) =
      _$DashboardStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$DashboardStateErrorCopyWith<_$DashboardStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
