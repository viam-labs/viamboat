// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<ViamAppLocation> location) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<ViamAppLocation> location)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<ViamAppLocation> location)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateIdle value) idle,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateIdle value)? idle,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateIdle value)? idle,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationStateIdleCopyWith<$Res> {
  factory _$$LocationStateIdleCopyWith(
          _$LocationStateIdle value, $Res Function(_$LocationStateIdle) then) =
      __$$LocationStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStateIdleCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateIdle>
    implements _$$LocationStateIdleCopyWith<$Res> {
  __$$LocationStateIdleCopyWithImpl(
      _$LocationStateIdle _value, $Res Function(_$LocationStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationStateIdle implements LocationStateIdle {
  const _$LocationStateIdle();

  @override
  String toString() {
    return 'LocationState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<ViamAppLocation> location) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<ViamAppLocation> location)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<ViamAppLocation> location)? loaded,
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
    required TResult Function(LocationStateIdle value) idle,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateIdle value)? idle,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateIdle value)? idle,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class LocationStateIdle implements LocationState {
  const factory LocationStateIdle() = _$LocationStateIdle;
}

/// @nodoc
abstract class _$$LocationStateLoadingCopyWith<$Res> {
  factory _$$LocationStateLoadingCopyWith(_$LocationStateLoading value,
          $Res Function(_$LocationStateLoading) then) =
      __$$LocationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationStateLoadingCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateLoading>
    implements _$$LocationStateLoadingCopyWith<$Res> {
  __$$LocationStateLoadingCopyWithImpl(_$LocationStateLoading _value,
      $Res Function(_$LocationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationStateLoading implements LocationStateLoading {
  const _$LocationStateLoading();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<ViamAppLocation> location) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<ViamAppLocation> location)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<ViamAppLocation> location)? loaded,
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
    required TResult Function(LocationStateIdle value) idle,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateIdle value)? idle,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateIdle value)? idle,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationStateLoading implements LocationState {
  const factory LocationStateLoading() = _$LocationStateLoading;
}

/// @nodoc
abstract class _$$LocationStateLoadedCopyWith<$Res> {
  factory _$$LocationStateLoadedCopyWith(_$LocationStateLoaded value,
          $Res Function(_$LocationStateLoaded) then) =
      __$$LocationStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ViamAppLocation> location});
}

/// @nodoc
class __$$LocationStateLoadedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateLoaded>
    implements _$$LocationStateLoadedCopyWith<$Res> {
  __$$LocationStateLoadedCopyWithImpl(
      _$LocationStateLoaded _value, $Res Function(_$LocationStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$LocationStateLoaded(
      null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<ViamAppLocation>,
    ));
  }
}

/// @nodoc

class _$LocationStateLoaded implements LocationStateLoaded {
  const _$LocationStateLoaded(final List<ViamAppLocation> location)
      : _location = location;

  final List<ViamAppLocation> _location;
  @override
  List<ViamAppLocation> get location {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  String toString() {
    return 'LocationState.loaded(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateLoaded &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateLoadedCopyWith<_$LocationStateLoaded> get copyWith =>
      __$$LocationStateLoadedCopyWithImpl<_$LocationStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<ViamAppLocation> location) loaded,
  }) {
    return loaded(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<ViamAppLocation> location)? loaded,
  }) {
    return loaded?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<ViamAppLocation> location)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationStateIdle value) idle,
    required TResult Function(LocationStateLoading value) loading,
    required TResult Function(LocationStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationStateIdle value)? idle,
    TResult? Function(LocationStateLoading value)? loading,
    TResult? Function(LocationStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationStateIdle value)? idle,
    TResult Function(LocationStateLoading value)? loading,
    TResult Function(LocationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LocationStateLoaded implements LocationState {
  const factory LocationStateLoaded(final List<ViamAppLocation> location) =
      _$LocationStateLoaded;

  List<ViamAppLocation> get location;
  @JsonKey(ignore: true)
  _$$LocationStateLoadedCopyWith<_$LocationStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
