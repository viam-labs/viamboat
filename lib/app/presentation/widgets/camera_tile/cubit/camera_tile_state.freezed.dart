// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_tile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraTileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<int> image) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<int> image)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<int> image)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraTileStateIdle value) idle,
    required TResult Function(CameraTileStateLoading value) loading,
    required TResult Function(CameraTileStateLoaded value) loaded,
    required TResult Function(CameraTileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraTileStateIdle value)? idle,
    TResult? Function(CameraTileStateLoading value)? loading,
    TResult? Function(CameraTileStateLoaded value)? loaded,
    TResult? Function(CameraTileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraTileStateIdle value)? idle,
    TResult Function(CameraTileStateLoading value)? loading,
    TResult Function(CameraTileStateLoaded value)? loaded,
    TResult Function(CameraTileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraTileStateCopyWith<$Res> {
  factory $CameraTileStateCopyWith(
          CameraTileState value, $Res Function(CameraTileState) then) =
      _$CameraTileStateCopyWithImpl<$Res, CameraTileState>;
}

/// @nodoc
class _$CameraTileStateCopyWithImpl<$Res, $Val extends CameraTileState>
    implements $CameraTileStateCopyWith<$Res> {
  _$CameraTileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CameraTileStateIdleCopyWith<$Res> {
  factory _$$CameraTileStateIdleCopyWith(_$CameraTileStateIdle value,
          $Res Function(_$CameraTileStateIdle) then) =
      __$$CameraTileStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraTileStateIdleCopyWithImpl<$Res>
    extends _$CameraTileStateCopyWithImpl<$Res, _$CameraTileStateIdle>
    implements _$$CameraTileStateIdleCopyWith<$Res> {
  __$$CameraTileStateIdleCopyWithImpl(
      _$CameraTileStateIdle _value, $Res Function(_$CameraTileStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CameraTileStateIdle implements CameraTileStateIdle {
  const _$CameraTileStateIdle();

  @override
  String toString() {
    return 'CameraTileState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CameraTileStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<int> image) loaded,
    required TResult Function() error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<int> image)? loaded,
    TResult? Function()? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<int> image)? loaded,
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
    required TResult Function(CameraTileStateIdle value) idle,
    required TResult Function(CameraTileStateLoading value) loading,
    required TResult Function(CameraTileStateLoaded value) loaded,
    required TResult Function(CameraTileStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraTileStateIdle value)? idle,
    TResult? Function(CameraTileStateLoading value)? loading,
    TResult? Function(CameraTileStateLoaded value)? loaded,
    TResult? Function(CameraTileStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraTileStateIdle value)? idle,
    TResult Function(CameraTileStateLoading value)? loading,
    TResult Function(CameraTileStateLoaded value)? loaded,
    TResult Function(CameraTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CameraTileStateIdle implements CameraTileState {
  const factory CameraTileStateIdle() = _$CameraTileStateIdle;
}

/// @nodoc
abstract class _$$CameraTileStateLoadingCopyWith<$Res> {
  factory _$$CameraTileStateLoadingCopyWith(_$CameraTileStateLoading value,
          $Res Function(_$CameraTileStateLoading) then) =
      __$$CameraTileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraTileStateLoadingCopyWithImpl<$Res>
    extends _$CameraTileStateCopyWithImpl<$Res, _$CameraTileStateLoading>
    implements _$$CameraTileStateLoadingCopyWith<$Res> {
  __$$CameraTileStateLoadingCopyWithImpl(_$CameraTileStateLoading _value,
      $Res Function(_$CameraTileStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CameraTileStateLoading implements CameraTileStateLoading {
  const _$CameraTileStateLoading();

  @override
  String toString() {
    return 'CameraTileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CameraTileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<int> image) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<int> image)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<int> image)? loaded,
    TResult Function()? error,
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
    required TResult Function(CameraTileStateIdle value) idle,
    required TResult Function(CameraTileStateLoading value) loading,
    required TResult Function(CameraTileStateLoaded value) loaded,
    required TResult Function(CameraTileStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraTileStateIdle value)? idle,
    TResult? Function(CameraTileStateLoading value)? loading,
    TResult? Function(CameraTileStateLoaded value)? loaded,
    TResult? Function(CameraTileStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraTileStateIdle value)? idle,
    TResult Function(CameraTileStateLoading value)? loading,
    TResult Function(CameraTileStateLoaded value)? loaded,
    TResult Function(CameraTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CameraTileStateLoading implements CameraTileState {
  const factory CameraTileStateLoading() = _$CameraTileStateLoading;
}

/// @nodoc
abstract class _$$CameraTileStateLoadedCopyWith<$Res> {
  factory _$$CameraTileStateLoadedCopyWith(_$CameraTileStateLoaded value,
          $Res Function(_$CameraTileStateLoaded) then) =
      __$$CameraTileStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> image});
}

/// @nodoc
class __$$CameraTileStateLoadedCopyWithImpl<$Res>
    extends _$CameraTileStateCopyWithImpl<$Res, _$CameraTileStateLoaded>
    implements _$$CameraTileStateLoadedCopyWith<$Res> {
  __$$CameraTileStateLoadedCopyWithImpl(_$CameraTileStateLoaded _value,
      $Res Function(_$CameraTileStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$CameraTileStateLoaded(
      null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$CameraTileStateLoaded implements CameraTileStateLoaded {
  const _$CameraTileStateLoaded(final List<int> image) : _image = image;

  final List<int> _image;
  @override
  List<int> get image {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString() {
    return 'CameraTileState.loaded(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraTileStateLoaded &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraTileStateLoadedCopyWith<_$CameraTileStateLoaded> get copyWith =>
      __$$CameraTileStateLoadedCopyWithImpl<_$CameraTileStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<int> image) loaded,
    required TResult Function() error,
  }) {
    return loaded(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<int> image)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<int> image)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraTileStateIdle value) idle,
    required TResult Function(CameraTileStateLoading value) loading,
    required TResult Function(CameraTileStateLoaded value) loaded,
    required TResult Function(CameraTileStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraTileStateIdle value)? idle,
    TResult? Function(CameraTileStateLoading value)? loading,
    TResult? Function(CameraTileStateLoaded value)? loaded,
    TResult? Function(CameraTileStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraTileStateIdle value)? idle,
    TResult Function(CameraTileStateLoading value)? loading,
    TResult Function(CameraTileStateLoaded value)? loaded,
    TResult Function(CameraTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CameraTileStateLoaded implements CameraTileState {
  const factory CameraTileStateLoaded(final List<int> image) =
      _$CameraTileStateLoaded;

  List<int> get image;
  @JsonKey(ignore: true)
  _$$CameraTileStateLoadedCopyWith<_$CameraTileStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraTileStateErrorCopyWith<$Res> {
  factory _$$CameraTileStateErrorCopyWith(_$CameraTileStateError value,
          $Res Function(_$CameraTileStateError) then) =
      __$$CameraTileStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraTileStateErrorCopyWithImpl<$Res>
    extends _$CameraTileStateCopyWithImpl<$Res, _$CameraTileStateError>
    implements _$$CameraTileStateErrorCopyWith<$Res> {
  __$$CameraTileStateErrorCopyWithImpl(_$CameraTileStateError _value,
      $Res Function(_$CameraTileStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CameraTileStateError implements CameraTileStateError {
  const _$CameraTileStateError();

  @override
  String toString() {
    return 'CameraTileState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CameraTileStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<int> image) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<int> image)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<int> image)? loaded,
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
    required TResult Function(CameraTileStateIdle value) idle,
    required TResult Function(CameraTileStateLoading value) loading,
    required TResult Function(CameraTileStateLoaded value) loaded,
    required TResult Function(CameraTileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraTileStateIdle value)? idle,
    TResult? Function(CameraTileStateLoading value)? loading,
    TResult? Function(CameraTileStateLoaded value)? loaded,
    TResult? Function(CameraTileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraTileStateIdle value)? idle,
    TResult Function(CameraTileStateLoading value)? loading,
    TResult Function(CameraTileStateLoaded value)? loaded,
    TResult Function(CameraTileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CameraTileStateError implements CameraTileState {
  const factory CameraTileStateError() = _$CameraTileStateError;
}
