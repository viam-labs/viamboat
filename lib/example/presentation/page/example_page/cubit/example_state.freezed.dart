// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'example_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExampleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleStateIdle value) idle,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateIdle value)? idle,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateIdle value)? idle,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleStateCopyWith<$Res> {
  factory $ExampleStateCopyWith(
          ExampleState value, $Res Function(ExampleState) then) =
      _$ExampleStateCopyWithImpl<$Res, ExampleState>;
}

/// @nodoc
class _$ExampleStateCopyWithImpl<$Res, $Val extends ExampleState>
    implements $ExampleStateCopyWith<$Res> {
  _$ExampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExampleStateIdleCopyWith<$Res> {
  factory _$$ExampleStateIdleCopyWith(
          _$ExampleStateIdle value, $Res Function(_$ExampleStateIdle) then) =
      __$$ExampleStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleStateIdleCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateIdle>
    implements _$$ExampleStateIdleCopyWith<$Res> {
  __$$ExampleStateIdleCopyWithImpl(
      _$ExampleStateIdle _value, $Res Function(_$ExampleStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleStateIdle implements ExampleStateIdle {
  const _$ExampleStateIdle();

  @override
  String toString() {
    return 'ExampleState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExampleStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(ExampleStateIdle value) idle,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateIdle value)? idle,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateIdle value)? idle,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ExampleStateIdle implements ExampleState {
  const factory ExampleStateIdle() = _$ExampleStateIdle;
}

/// @nodoc
abstract class _$$ExampleStateLoadingCopyWith<$Res> {
  factory _$$ExampleStateLoadingCopyWith(_$ExampleStateLoading value,
          $Res Function(_$ExampleStateLoading) then) =
      __$$ExampleStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleStateLoadingCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateLoading>
    implements _$$ExampleStateLoadingCopyWith<$Res> {
  __$$ExampleStateLoadingCopyWithImpl(
      _$ExampleStateLoading _value, $Res Function(_$ExampleStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleStateLoading implements ExampleStateLoading {
  const _$ExampleStateLoading();

  @override
  String toString() {
    return 'ExampleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExampleStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(ExampleStateIdle value) idle,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateIdle value)? idle,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateIdle value)? idle,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExampleStateLoading implements ExampleState {
  const factory ExampleStateLoading() = _$ExampleStateLoading;
}

/// @nodoc
abstract class _$$ExampleStateLoadedCopyWith<$Res> {
  factory _$$ExampleStateLoadedCopyWith(_$ExampleStateLoaded value,
          $Res Function(_$ExampleStateLoaded) then) =
      __$$ExampleStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExampleStateLoadedCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateLoaded>
    implements _$$ExampleStateLoadedCopyWith<$Res> {
  __$$ExampleStateLoadedCopyWithImpl(
      _$ExampleStateLoaded _value, $Res Function(_$ExampleStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExampleStateLoaded implements ExampleStateLoaded {
  const _$ExampleStateLoaded();

  @override
  String toString() {
    return 'ExampleState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExampleStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleStateIdle value) idle,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateIdle value)? idle,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateIdle value)? idle,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExampleStateLoaded implements ExampleState {
  const factory ExampleStateLoaded() = _$ExampleStateLoaded;
}

/// @nodoc
abstract class _$$ExampleStateErrorCopyWith<$Res> {
  factory _$$ExampleStateErrorCopyWith(
          _$ExampleStateError value, $Res Function(_$ExampleStateError) then) =
      __$$ExampleStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ExampleStateErrorCopyWithImpl<$Res>
    extends _$ExampleStateCopyWithImpl<$Res, _$ExampleStateError>
    implements _$$ExampleStateErrorCopyWith<$Res> {
  __$$ExampleStateErrorCopyWithImpl(
      _$ExampleStateError _value, $Res Function(_$ExampleStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ExampleStateError(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ExampleStateError implements ExampleStateError {
  const _$ExampleStateError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ExampleState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleStateErrorCopyWith<_$ExampleStateError> get copyWith =>
      __$$ExampleStateErrorCopyWithImpl<_$ExampleStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(ExampleStateIdle value) idle,
    required TResult Function(ExampleStateLoading value) loading,
    required TResult Function(ExampleStateLoaded value) loaded,
    required TResult Function(ExampleStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleStateIdle value)? idle,
    TResult? Function(ExampleStateLoading value)? loading,
    TResult? Function(ExampleStateLoaded value)? loaded,
    TResult? Function(ExampleStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleStateIdle value)? idle,
    TResult Function(ExampleStateLoading value)? loading,
    TResult Function(ExampleStateLoaded value)? loaded,
    TResult Function(ExampleStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExampleStateError implements ExampleState {
  const factory ExampleStateError([final String? message]) =
      _$ExampleStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$ExampleStateErrorCopyWith<_$ExampleStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
