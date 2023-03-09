// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'robots_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RobotsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<ViamAppRobot> robots) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<ViamAppRobot> robots)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<ViamAppRobot> robots)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RobotsStateIdle value) idle,
    required TResult Function(RobotsStateLoading value) loading,
    required TResult Function(RobotsStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RobotsStateIdle value)? idle,
    TResult? Function(RobotsStateLoading value)? loading,
    TResult? Function(RobotsStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RobotsStateIdle value)? idle,
    TResult Function(RobotsStateLoading value)? loading,
    TResult Function(RobotsStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotsStateCopyWith<$Res> {
  factory $RobotsStateCopyWith(
          RobotsState value, $Res Function(RobotsState) then) =
      _$RobotsStateCopyWithImpl<$Res, RobotsState>;
}

/// @nodoc
class _$RobotsStateCopyWithImpl<$Res, $Val extends RobotsState>
    implements $RobotsStateCopyWith<$Res> {
  _$RobotsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RobotsStateIdleCopyWith<$Res> {
  factory _$$RobotsStateIdleCopyWith(
          _$RobotsStateIdle value, $Res Function(_$RobotsStateIdle) then) =
      __$$RobotsStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RobotsStateIdleCopyWithImpl<$Res>
    extends _$RobotsStateCopyWithImpl<$Res, _$RobotsStateIdle>
    implements _$$RobotsStateIdleCopyWith<$Res> {
  __$$RobotsStateIdleCopyWithImpl(
      _$RobotsStateIdle _value, $Res Function(_$RobotsStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RobotsStateIdle implements RobotsStateIdle {
  const _$RobotsStateIdle();

  @override
  String toString() {
    return 'RobotsState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RobotsStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<ViamAppRobot> robots) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<ViamAppRobot> robots)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<ViamAppRobot> robots)? loaded,
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
    required TResult Function(RobotsStateIdle value) idle,
    required TResult Function(RobotsStateLoading value) loading,
    required TResult Function(RobotsStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RobotsStateIdle value)? idle,
    TResult? Function(RobotsStateLoading value)? loading,
    TResult? Function(RobotsStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RobotsStateIdle value)? idle,
    TResult Function(RobotsStateLoading value)? loading,
    TResult Function(RobotsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class RobotsStateIdle implements RobotsState {
  const factory RobotsStateIdle() = _$RobotsStateIdle;
}

/// @nodoc
abstract class _$$RobotsStateLoadingCopyWith<$Res> {
  factory _$$RobotsStateLoadingCopyWith(_$RobotsStateLoading value,
          $Res Function(_$RobotsStateLoading) then) =
      __$$RobotsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RobotsStateLoadingCopyWithImpl<$Res>
    extends _$RobotsStateCopyWithImpl<$Res, _$RobotsStateLoading>
    implements _$$RobotsStateLoadingCopyWith<$Res> {
  __$$RobotsStateLoadingCopyWithImpl(
      _$RobotsStateLoading _value, $Res Function(_$RobotsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RobotsStateLoading implements RobotsStateLoading {
  const _$RobotsStateLoading();

  @override
  String toString() {
    return 'RobotsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RobotsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<ViamAppRobot> robots) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<ViamAppRobot> robots)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<ViamAppRobot> robots)? loaded,
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
    required TResult Function(RobotsStateIdle value) idle,
    required TResult Function(RobotsStateLoading value) loading,
    required TResult Function(RobotsStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RobotsStateIdle value)? idle,
    TResult? Function(RobotsStateLoading value)? loading,
    TResult? Function(RobotsStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RobotsStateIdle value)? idle,
    TResult Function(RobotsStateLoading value)? loading,
    TResult Function(RobotsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RobotsStateLoading implements RobotsState {
  const factory RobotsStateLoading() = _$RobotsStateLoading;
}

/// @nodoc
abstract class _$$RobotsStateLoadedCopyWith<$Res> {
  factory _$$RobotsStateLoadedCopyWith(
          _$RobotsStateLoaded value, $Res Function(_$RobotsStateLoaded) then) =
      __$$RobotsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ViamAppRobot> robots});
}

/// @nodoc
class __$$RobotsStateLoadedCopyWithImpl<$Res>
    extends _$RobotsStateCopyWithImpl<$Res, _$RobotsStateLoaded>
    implements _$$RobotsStateLoadedCopyWith<$Res> {
  __$$RobotsStateLoadedCopyWithImpl(
      _$RobotsStateLoaded _value, $Res Function(_$RobotsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? robots = null,
  }) {
    return _then(_$RobotsStateLoaded(
      null == robots
          ? _value._robots
          : robots // ignore: cast_nullable_to_non_nullable
              as List<ViamAppRobot>,
    ));
  }
}

/// @nodoc

class _$RobotsStateLoaded implements RobotsStateLoaded {
  const _$RobotsStateLoaded(final List<ViamAppRobot> robots) : _robots = robots;

  final List<ViamAppRobot> _robots;
  @override
  List<ViamAppRobot> get robots {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_robots);
  }

  @override
  String toString() {
    return 'RobotsState.loaded(robots: $robots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RobotsStateLoaded &&
            const DeepCollectionEquality().equals(other._robots, _robots));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_robots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RobotsStateLoadedCopyWith<_$RobotsStateLoaded> get copyWith =>
      __$$RobotsStateLoadedCopyWithImpl<_$RobotsStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<ViamAppRobot> robots) loaded,
  }) {
    return loaded(robots);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<ViamAppRobot> robots)? loaded,
  }) {
    return loaded?.call(robots);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<ViamAppRobot> robots)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(robots);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RobotsStateIdle value) idle,
    required TResult Function(RobotsStateLoading value) loading,
    required TResult Function(RobotsStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RobotsStateIdle value)? idle,
    TResult? Function(RobotsStateLoading value)? loading,
    TResult? Function(RobotsStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RobotsStateIdle value)? idle,
    TResult Function(RobotsStateLoading value)? loading,
    TResult Function(RobotsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RobotsStateLoaded implements RobotsState {
  const factory RobotsStateLoaded(final List<ViamAppRobot> robots) =
      _$RobotsStateLoaded;

  List<ViamAppRobot> get robots;
  @JsonKey(ignore: true)
  _$$RobotsStateLoadedCopyWith<_$RobotsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
