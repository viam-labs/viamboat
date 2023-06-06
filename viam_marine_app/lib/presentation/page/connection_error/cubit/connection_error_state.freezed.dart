// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_error_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionErrorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) loaded,
    required TResult Function(RobotConfig config) goToMainPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? loaded,
    TResult? Function(RobotConfig config)? goToMainPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? loaded,
    TResult Function(RobotConfig config)? goToMainPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionErrorStateIdle value) idle,
    required TResult Function(ConnectionErrorStateLoading value) loading,
    required TResult Function(ConnectionErrorStateLoaded value) loaded,
    required TResult Function(ConnectionErrorStateGoToMainPage value)
        goToMainPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionErrorStateIdle value)? idle,
    TResult? Function(ConnectionErrorStateLoading value)? loading,
    TResult? Function(ConnectionErrorStateLoaded value)? loaded,
    TResult? Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionErrorStateIdle value)? idle,
    TResult Function(ConnectionErrorStateLoading value)? loading,
    TResult Function(ConnectionErrorStateLoaded value)? loaded,
    TResult Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionErrorStateCopyWith<$Res> {
  factory $ConnectionErrorStateCopyWith(ConnectionErrorState value,
          $Res Function(ConnectionErrorState) then) =
      _$ConnectionErrorStateCopyWithImpl<$Res, ConnectionErrorState>;
}

/// @nodoc
class _$ConnectionErrorStateCopyWithImpl<$Res,
        $Val extends ConnectionErrorState>
    implements $ConnectionErrorStateCopyWith<$Res> {
  _$ConnectionErrorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectionErrorStateIdleCopyWith<$Res> {
  factory _$$ConnectionErrorStateIdleCopyWith(_$ConnectionErrorStateIdle value,
          $Res Function(_$ConnectionErrorStateIdle) then) =
      __$$ConnectionErrorStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionErrorStateIdleCopyWithImpl<$Res>
    extends _$ConnectionErrorStateCopyWithImpl<$Res, _$ConnectionErrorStateIdle>
    implements _$$ConnectionErrorStateIdleCopyWith<$Res> {
  __$$ConnectionErrorStateIdleCopyWithImpl(_$ConnectionErrorStateIdle _value,
      $Res Function(_$ConnectionErrorStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectionErrorStateIdle implements ConnectionErrorStateIdle {
  const _$ConnectionErrorStateIdle();

  @override
  String toString() {
    return 'ConnectionErrorState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionErrorStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) loaded,
    required TResult Function(RobotConfig config) goToMainPage,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? loaded,
    TResult? Function(RobotConfig config)? goToMainPage,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? loaded,
    TResult Function(RobotConfig config)? goToMainPage,
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
    required TResult Function(ConnectionErrorStateIdle value) idle,
    required TResult Function(ConnectionErrorStateLoading value) loading,
    required TResult Function(ConnectionErrorStateLoaded value) loaded,
    required TResult Function(ConnectionErrorStateGoToMainPage value)
        goToMainPage,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionErrorStateIdle value)? idle,
    TResult? Function(ConnectionErrorStateLoading value)? loading,
    TResult? Function(ConnectionErrorStateLoaded value)? loaded,
    TResult? Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionErrorStateIdle value)? idle,
    TResult Function(ConnectionErrorStateLoading value)? loading,
    TResult Function(ConnectionErrorStateLoaded value)? loaded,
    TResult Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ConnectionErrorStateIdle implements ConnectionErrorState {
  const factory ConnectionErrorStateIdle() = _$ConnectionErrorStateIdle;
}

/// @nodoc
abstract class _$$ConnectionErrorStateLoadingCopyWith<$Res> {
  factory _$$ConnectionErrorStateLoadingCopyWith(
          _$ConnectionErrorStateLoading value,
          $Res Function(_$ConnectionErrorStateLoading) then) =
      __$$ConnectionErrorStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConnectionErrorStateLoadingCopyWithImpl<$Res>
    extends _$ConnectionErrorStateCopyWithImpl<$Res,
        _$ConnectionErrorStateLoading>
    implements _$$ConnectionErrorStateLoadingCopyWith<$Res> {
  __$$ConnectionErrorStateLoadingCopyWithImpl(
      _$ConnectionErrorStateLoading _value,
      $Res Function(_$ConnectionErrorStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConnectionErrorStateLoading(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectionErrorStateLoading implements ConnectionErrorStateLoading {
  const _$ConnectionErrorStateLoading([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ConnectionErrorState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionErrorStateLoading &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionErrorStateLoadingCopyWith<_$ConnectionErrorStateLoading>
      get copyWith => __$$ConnectionErrorStateLoadingCopyWithImpl<
          _$ConnectionErrorStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) loaded,
    required TResult Function(RobotConfig config) goToMainPage,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? loaded,
    TResult? Function(RobotConfig config)? goToMainPage,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? loaded,
    TResult Function(RobotConfig config)? goToMainPage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionErrorStateIdle value) idle,
    required TResult Function(ConnectionErrorStateLoading value) loading,
    required TResult Function(ConnectionErrorStateLoaded value) loaded,
    required TResult Function(ConnectionErrorStateGoToMainPage value)
        goToMainPage,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionErrorStateIdle value)? idle,
    TResult? Function(ConnectionErrorStateLoading value)? loading,
    TResult? Function(ConnectionErrorStateLoaded value)? loaded,
    TResult? Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionErrorStateIdle value)? idle,
    TResult Function(ConnectionErrorStateLoading value)? loading,
    TResult Function(ConnectionErrorStateLoaded value)? loaded,
    TResult Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ConnectionErrorStateLoading implements ConnectionErrorState {
  const factory ConnectionErrorStateLoading([final String? message]) =
      _$ConnectionErrorStateLoading;

  String? get message;
  @JsonKey(ignore: true)
  _$$ConnectionErrorStateLoadingCopyWith<_$ConnectionErrorStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionErrorStateLoadedCopyWith<$Res> {
  factory _$$ConnectionErrorStateLoadedCopyWith(
          _$ConnectionErrorStateLoaded value,
          $Res Function(_$ConnectionErrorStateLoaded) then) =
      __$$ConnectionErrorStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConnectionErrorStateLoadedCopyWithImpl<$Res>
    extends _$ConnectionErrorStateCopyWithImpl<$Res,
        _$ConnectionErrorStateLoaded>
    implements _$$ConnectionErrorStateLoadedCopyWith<$Res> {
  __$$ConnectionErrorStateLoadedCopyWithImpl(
      _$ConnectionErrorStateLoaded _value,
      $Res Function(_$ConnectionErrorStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConnectionErrorStateLoaded(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectionErrorStateLoaded implements ConnectionErrorStateLoaded {
  const _$ConnectionErrorStateLoaded([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ConnectionErrorState.loaded(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionErrorStateLoaded &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionErrorStateLoadedCopyWith<_$ConnectionErrorStateLoaded>
      get copyWith => __$$ConnectionErrorStateLoadedCopyWithImpl<
          _$ConnectionErrorStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) loaded,
    required TResult Function(RobotConfig config) goToMainPage,
  }) {
    return loaded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? loaded,
    TResult? Function(RobotConfig config)? goToMainPage,
  }) {
    return loaded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? loaded,
    TResult Function(RobotConfig config)? goToMainPage,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionErrorStateIdle value) idle,
    required TResult Function(ConnectionErrorStateLoading value) loading,
    required TResult Function(ConnectionErrorStateLoaded value) loaded,
    required TResult Function(ConnectionErrorStateGoToMainPage value)
        goToMainPage,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionErrorStateIdle value)? idle,
    TResult? Function(ConnectionErrorStateLoading value)? loading,
    TResult? Function(ConnectionErrorStateLoaded value)? loaded,
    TResult? Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionErrorStateIdle value)? idle,
    TResult Function(ConnectionErrorStateLoading value)? loading,
    TResult Function(ConnectionErrorStateLoaded value)? loaded,
    TResult Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ConnectionErrorStateLoaded implements ConnectionErrorState {
  const factory ConnectionErrorStateLoaded([final String? message]) =
      _$ConnectionErrorStateLoaded;

  String? get message;
  @JsonKey(ignore: true)
  _$$ConnectionErrorStateLoadedCopyWith<_$ConnectionErrorStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionErrorStateGoToMainPageCopyWith<$Res> {
  factory _$$ConnectionErrorStateGoToMainPageCopyWith(
          _$ConnectionErrorStateGoToMainPage value,
          $Res Function(_$ConnectionErrorStateGoToMainPage) then) =
      __$$ConnectionErrorStateGoToMainPageCopyWithImpl<$Res>;
  @useResult
  $Res call({RobotConfig config});
}

/// @nodoc
class __$$ConnectionErrorStateGoToMainPageCopyWithImpl<$Res>
    extends _$ConnectionErrorStateCopyWithImpl<$Res,
        _$ConnectionErrorStateGoToMainPage>
    implements _$$ConnectionErrorStateGoToMainPageCopyWith<$Res> {
  __$$ConnectionErrorStateGoToMainPageCopyWithImpl(
      _$ConnectionErrorStateGoToMainPage _value,
      $Res Function(_$ConnectionErrorStateGoToMainPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
  }) {
    return _then(_$ConnectionErrorStateGoToMainPage(
      null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as RobotConfig,
    ));
  }
}

/// @nodoc

class _$ConnectionErrorStateGoToMainPage
    implements ConnectionErrorStateGoToMainPage {
  const _$ConnectionErrorStateGoToMainPage(this.config);

  @override
  final RobotConfig config;

  @override
  String toString() {
    return 'ConnectionErrorState.goToMainPage(config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionErrorStateGoToMainPage &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionErrorStateGoToMainPageCopyWith<
          _$ConnectionErrorStateGoToMainPage>
      get copyWith => __$$ConnectionErrorStateGoToMainPageCopyWithImpl<
          _$ConnectionErrorStateGoToMainPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) loaded,
    required TResult Function(RobotConfig config) goToMainPage,
  }) {
    return goToMainPage(config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? loaded,
    TResult? Function(RobotConfig config)? goToMainPage,
  }) {
    return goToMainPage?.call(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? loaded,
    TResult Function(RobotConfig config)? goToMainPage,
    required TResult orElse(),
  }) {
    if (goToMainPage != null) {
      return goToMainPage(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionErrorStateIdle value) idle,
    required TResult Function(ConnectionErrorStateLoading value) loading,
    required TResult Function(ConnectionErrorStateLoaded value) loaded,
    required TResult Function(ConnectionErrorStateGoToMainPage value)
        goToMainPage,
  }) {
    return goToMainPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionErrorStateIdle value)? idle,
    TResult? Function(ConnectionErrorStateLoading value)? loading,
    TResult? Function(ConnectionErrorStateLoaded value)? loaded,
    TResult? Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
  }) {
    return goToMainPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionErrorStateIdle value)? idle,
    TResult Function(ConnectionErrorStateLoading value)? loading,
    TResult Function(ConnectionErrorStateLoaded value)? loaded,
    TResult Function(ConnectionErrorStateGoToMainPage value)? goToMainPage,
    required TResult orElse(),
  }) {
    if (goToMainPage != null) {
      return goToMainPage(this);
    }
    return orElse();
  }
}

abstract class ConnectionErrorStateGoToMainPage
    implements ConnectionErrorState {
  const factory ConnectionErrorStateGoToMainPage(final RobotConfig config) =
      _$ConnectionErrorStateGoToMainPage;

  RobotConfig get config;
  @JsonKey(ignore: true)
  _$$ConnectionErrorStateGoToMainPageCopyWith<
          _$ConnectionErrorStateGoToMainPage>
      get copyWith => throw _privateConstructorUsedError;
}
