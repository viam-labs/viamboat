// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'webrtc_camera_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WebrtcCameraState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(RTCVideoRenderer rtcVideoRenderer) loaded,
    required TResult Function(ViamError viamError,
            RTCVideoRenderer rtcVideoRenderer, DateTime? lastUpdated)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(RTCVideoRenderer rtcVideoRenderer)? loaded,
    TResult? Function(ViamError viamError, RTCVideoRenderer rtcVideoRenderer,
            DateTime? lastUpdated)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(RTCVideoRenderer rtcVideoRenderer)? loaded,
    TResult Function(ViamError viamError, RTCVideoRenderer rtcVideoRenderer,
            DateTime? lastUpdated)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebrtcCameraStateIdle value) idle,
    required TResult Function(WebrtcCameraStateLoaded value) loaded,
    required TResult Function(WebrtcCameraStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebrtcCameraStateIdle value)? idle,
    TResult? Function(WebrtcCameraStateLoaded value)? loaded,
    TResult? Function(WebrtcCameraStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebrtcCameraStateIdle value)? idle,
    TResult Function(WebrtcCameraStateLoaded value)? loaded,
    TResult Function(WebrtcCameraStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebrtcCameraStateCopyWith<$Res> {
  factory $WebrtcCameraStateCopyWith(
          WebrtcCameraState value, $Res Function(WebrtcCameraState) then) =
      _$WebrtcCameraStateCopyWithImpl<$Res, WebrtcCameraState>;
}

/// @nodoc
class _$WebrtcCameraStateCopyWithImpl<$Res, $Val extends WebrtcCameraState>
    implements $WebrtcCameraStateCopyWith<$Res> {
  _$WebrtcCameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WebrtcCameraStateIdleCopyWith<$Res> {
  factory _$$WebrtcCameraStateIdleCopyWith(_$WebrtcCameraStateIdle value,
          $Res Function(_$WebrtcCameraStateIdle) then) =
      __$$WebrtcCameraStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WebrtcCameraStateIdleCopyWithImpl<$Res>
    extends _$WebrtcCameraStateCopyWithImpl<$Res, _$WebrtcCameraStateIdle>
    implements _$$WebrtcCameraStateIdleCopyWith<$Res> {
  __$$WebrtcCameraStateIdleCopyWithImpl(_$WebrtcCameraStateIdle _value,
      $Res Function(_$WebrtcCameraStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WebrtcCameraStateIdle implements WebrtcCameraStateIdle {
  const _$WebrtcCameraStateIdle();

  @override
  String toString() {
    return 'WebrtcCameraState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WebrtcCameraStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(RTCVideoRenderer rtcVideoRenderer) loaded,
    required TResult Function(ViamError viamError,
            RTCVideoRenderer rtcVideoRenderer, DateTime? lastUpdated)
        error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(RTCVideoRenderer rtcVideoRenderer)? loaded,
    TResult? Function(ViamError viamError, RTCVideoRenderer rtcVideoRenderer,
            DateTime? lastUpdated)?
        error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(RTCVideoRenderer rtcVideoRenderer)? loaded,
    TResult Function(ViamError viamError, RTCVideoRenderer rtcVideoRenderer,
            DateTime? lastUpdated)?
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
    required TResult Function(WebrtcCameraStateIdle value) idle,
    required TResult Function(WebrtcCameraStateLoaded value) loaded,
    required TResult Function(WebrtcCameraStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebrtcCameraStateIdle value)? idle,
    TResult? Function(WebrtcCameraStateLoaded value)? loaded,
    TResult? Function(WebrtcCameraStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebrtcCameraStateIdle value)? idle,
    TResult Function(WebrtcCameraStateLoaded value)? loaded,
    TResult Function(WebrtcCameraStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class WebrtcCameraStateIdle implements WebrtcCameraState {
  const factory WebrtcCameraStateIdle() = _$WebrtcCameraStateIdle;
}

/// @nodoc
abstract class _$$WebrtcCameraStateLoadedCopyWith<$Res> {
  factory _$$WebrtcCameraStateLoadedCopyWith(_$WebrtcCameraStateLoaded value,
          $Res Function(_$WebrtcCameraStateLoaded) then) =
      __$$WebrtcCameraStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({RTCVideoRenderer rtcVideoRenderer});
}

/// @nodoc
class __$$WebrtcCameraStateLoadedCopyWithImpl<$Res>
    extends _$WebrtcCameraStateCopyWithImpl<$Res, _$WebrtcCameraStateLoaded>
    implements _$$WebrtcCameraStateLoadedCopyWith<$Res> {
  __$$WebrtcCameraStateLoadedCopyWithImpl(_$WebrtcCameraStateLoaded _value,
      $Res Function(_$WebrtcCameraStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rtcVideoRenderer = null,
  }) {
    return _then(_$WebrtcCameraStateLoaded(
      null == rtcVideoRenderer
          ? _value.rtcVideoRenderer
          : rtcVideoRenderer // ignore: cast_nullable_to_non_nullable
              as RTCVideoRenderer,
    ));
  }
}

/// @nodoc

class _$WebrtcCameraStateLoaded implements WebrtcCameraStateLoaded {
  const _$WebrtcCameraStateLoaded(this.rtcVideoRenderer);

  @override
  final RTCVideoRenderer rtcVideoRenderer;

  @override
  String toString() {
    return 'WebrtcCameraState.loaded(rtcVideoRenderer: $rtcVideoRenderer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebrtcCameraStateLoaded &&
            (identical(other.rtcVideoRenderer, rtcVideoRenderer) ||
                other.rtcVideoRenderer == rtcVideoRenderer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rtcVideoRenderer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebrtcCameraStateLoadedCopyWith<_$WebrtcCameraStateLoaded> get copyWith =>
      __$$WebrtcCameraStateLoadedCopyWithImpl<_$WebrtcCameraStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(RTCVideoRenderer rtcVideoRenderer) loaded,
    required TResult Function(ViamError viamError,
            RTCVideoRenderer rtcVideoRenderer, DateTime? lastUpdated)
        error,
  }) {
    return loaded(rtcVideoRenderer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(RTCVideoRenderer rtcVideoRenderer)? loaded,
    TResult? Function(ViamError viamError, RTCVideoRenderer rtcVideoRenderer,
            DateTime? lastUpdated)?
        error,
  }) {
    return loaded?.call(rtcVideoRenderer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(RTCVideoRenderer rtcVideoRenderer)? loaded,
    TResult Function(ViamError viamError, RTCVideoRenderer rtcVideoRenderer,
            DateTime? lastUpdated)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rtcVideoRenderer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebrtcCameraStateIdle value) idle,
    required TResult Function(WebrtcCameraStateLoaded value) loaded,
    required TResult Function(WebrtcCameraStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebrtcCameraStateIdle value)? idle,
    TResult? Function(WebrtcCameraStateLoaded value)? loaded,
    TResult? Function(WebrtcCameraStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebrtcCameraStateIdle value)? idle,
    TResult Function(WebrtcCameraStateLoaded value)? loaded,
    TResult Function(WebrtcCameraStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WebrtcCameraStateLoaded implements WebrtcCameraState {
  const factory WebrtcCameraStateLoaded(
      final RTCVideoRenderer rtcVideoRenderer) = _$WebrtcCameraStateLoaded;

  RTCVideoRenderer get rtcVideoRenderer;
  @JsonKey(ignore: true)
  _$$WebrtcCameraStateLoadedCopyWith<_$WebrtcCameraStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebrtcCameraStateErrorCopyWith<$Res> {
  factory _$$WebrtcCameraStateErrorCopyWith(_$WebrtcCameraStateError value,
          $Res Function(_$WebrtcCameraStateError) then) =
      __$$WebrtcCameraStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ViamError viamError,
      RTCVideoRenderer rtcVideoRenderer,
      DateTime? lastUpdated});
}

/// @nodoc
class __$$WebrtcCameraStateErrorCopyWithImpl<$Res>
    extends _$WebrtcCameraStateCopyWithImpl<$Res, _$WebrtcCameraStateError>
    implements _$$WebrtcCameraStateErrorCopyWith<$Res> {
  __$$WebrtcCameraStateErrorCopyWithImpl(_$WebrtcCameraStateError _value,
      $Res Function(_$WebrtcCameraStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viamError = null,
    Object? rtcVideoRenderer = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$WebrtcCameraStateError(
      null == viamError
          ? _value.viamError
          : viamError // ignore: cast_nullable_to_non_nullable
              as ViamError,
      null == rtcVideoRenderer
          ? _value.rtcVideoRenderer
          : rtcVideoRenderer // ignore: cast_nullable_to_non_nullable
              as RTCVideoRenderer,
      freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$WebrtcCameraStateError implements WebrtcCameraStateError {
  const _$WebrtcCameraStateError(
      this.viamError, this.rtcVideoRenderer, this.lastUpdated);

  @override
  final ViamError viamError;
  @override
  final RTCVideoRenderer rtcVideoRenderer;
  @override
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'WebrtcCameraState.error(viamError: $viamError, rtcVideoRenderer: $rtcVideoRenderer, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebrtcCameraStateError &&
            (identical(other.viamError, viamError) ||
                other.viamError == viamError) &&
            (identical(other.rtcVideoRenderer, rtcVideoRenderer) ||
                other.rtcVideoRenderer == rtcVideoRenderer) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, viamError, rtcVideoRenderer, lastUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebrtcCameraStateErrorCopyWith<_$WebrtcCameraStateError> get copyWith =>
      __$$WebrtcCameraStateErrorCopyWithImpl<_$WebrtcCameraStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(RTCVideoRenderer rtcVideoRenderer) loaded,
    required TResult Function(ViamError viamError,
            RTCVideoRenderer rtcVideoRenderer, DateTime? lastUpdated)
        error,
  }) {
    return error(viamError, rtcVideoRenderer, lastUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(RTCVideoRenderer rtcVideoRenderer)? loaded,
    TResult? Function(ViamError viamError, RTCVideoRenderer rtcVideoRenderer,
            DateTime? lastUpdated)?
        error,
  }) {
    return error?.call(viamError, rtcVideoRenderer, lastUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(RTCVideoRenderer rtcVideoRenderer)? loaded,
    TResult Function(ViamError viamError, RTCVideoRenderer rtcVideoRenderer,
            DateTime? lastUpdated)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(viamError, rtcVideoRenderer, lastUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebrtcCameraStateIdle value) idle,
    required TResult Function(WebrtcCameraStateLoaded value) loaded,
    required TResult Function(WebrtcCameraStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebrtcCameraStateIdle value)? idle,
    TResult? Function(WebrtcCameraStateLoaded value)? loaded,
    TResult? Function(WebrtcCameraStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebrtcCameraStateIdle value)? idle,
    TResult Function(WebrtcCameraStateLoaded value)? loaded,
    TResult Function(WebrtcCameraStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WebrtcCameraStateError implements WebrtcCameraState {
  const factory WebrtcCameraStateError(
      final ViamError viamError,
      final RTCVideoRenderer rtcVideoRenderer,
      final DateTime? lastUpdated) = _$WebrtcCameraStateError;

  ViamError get viamError;
  RTCVideoRenderer get rtcVideoRenderer;
  DateTime? get lastUpdated;
  @JsonKey(ignore: true)
  _$$WebrtcCameraStateErrorCopyWith<_$WebrtcCameraStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
