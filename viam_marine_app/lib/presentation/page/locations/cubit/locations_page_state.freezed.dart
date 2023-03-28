// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locations_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationsPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)
        loaded,
    required TResult Function(ViamAppRobot robot) goToMainPage,
    required TResult Function(ViamAppRobot robot, String secret)
        connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult? Function(ViamAppRobot robot)? goToMainPage,
    TResult? Function(ViamAppRobot robot, String secret)? connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult Function(ViamAppRobot robot)? goToMainPage,
    TResult Function(ViamAppRobot robot, String secret)? connectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsPageStateIdle value) idle,
    required TResult Function(LocationsPageStateLoading value) loading,
    required TResult Function(LocationsPageStateLoaded value) loaded,
    required TResult Function(LocationsPageStateGoToMainPage value)
        goToMainPage,
    required TResult Function(LocationsPageStateConnectionError value)
        connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationsPageStateIdle value)? idle,
    TResult? Function(LocationsPageStateLoading value)? loading,
    TResult? Function(LocationsPageStateLoaded value)? loaded,
    TResult? Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult? Function(LocationsPageStateConnectionError value)? connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsPageStateIdle value)? idle,
    TResult Function(LocationsPageStateLoading value)? loading,
    TResult Function(LocationsPageStateLoaded value)? loaded,
    TResult Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult Function(LocationsPageStateConnectionError value)? connectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsPageStateCopyWith<$Res> {
  factory $LocationsPageStateCopyWith(
          LocationsPageState value, $Res Function(LocationsPageState) then) =
      _$LocationsPageStateCopyWithImpl<$Res, LocationsPageState>;
}

/// @nodoc
class _$LocationsPageStateCopyWithImpl<$Res, $Val extends LocationsPageState>
    implements $LocationsPageStateCopyWith<$Res> {
  _$LocationsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationsPageStateIdleCopyWith<$Res> {
  factory _$$LocationsPageStateIdleCopyWith(_$LocationsPageStateIdle value,
          $Res Function(_$LocationsPageStateIdle) then) =
      __$$LocationsPageStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsPageStateIdleCopyWithImpl<$Res>
    extends _$LocationsPageStateCopyWithImpl<$Res, _$LocationsPageStateIdle>
    implements _$$LocationsPageStateIdleCopyWith<$Res> {
  __$$LocationsPageStateIdleCopyWithImpl(_$LocationsPageStateIdle _value,
      $Res Function(_$LocationsPageStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationsPageStateIdle implements LocationsPageStateIdle {
  const _$LocationsPageStateIdle();

  @override
  String toString() {
    return 'LocationsPageState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationsPageStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)
        loaded,
    required TResult Function(ViamAppRobot robot) goToMainPage,
    required TResult Function(ViamAppRobot robot, String secret)
        connectionError,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult? Function(ViamAppRobot robot)? goToMainPage,
    TResult? Function(ViamAppRobot robot, String secret)? connectionError,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult Function(ViamAppRobot robot)? goToMainPage,
    TResult Function(ViamAppRobot robot, String secret)? connectionError,
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
    required TResult Function(LocationsPageStateIdle value) idle,
    required TResult Function(LocationsPageStateLoading value) loading,
    required TResult Function(LocationsPageStateLoaded value) loaded,
    required TResult Function(LocationsPageStateGoToMainPage value)
        goToMainPage,
    required TResult Function(LocationsPageStateConnectionError value)
        connectionError,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationsPageStateIdle value)? idle,
    TResult? Function(LocationsPageStateLoading value)? loading,
    TResult? Function(LocationsPageStateLoaded value)? loaded,
    TResult? Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult? Function(LocationsPageStateConnectionError value)? connectionError,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsPageStateIdle value)? idle,
    TResult Function(LocationsPageStateLoading value)? loading,
    TResult Function(LocationsPageStateLoaded value)? loaded,
    TResult Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult Function(LocationsPageStateConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class LocationsPageStateIdle implements LocationsPageState {
  const factory LocationsPageStateIdle() = _$LocationsPageStateIdle;
}

/// @nodoc
abstract class _$$LocationsPageStateLoadingCopyWith<$Res> {
  factory _$$LocationsPageStateLoadingCopyWith(
          _$LocationsPageStateLoading value,
          $Res Function(_$LocationsPageStateLoading) then) =
      __$$LocationsPageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsPageStateLoadingCopyWithImpl<$Res>
    extends _$LocationsPageStateCopyWithImpl<$Res, _$LocationsPageStateLoading>
    implements _$$LocationsPageStateLoadingCopyWith<$Res> {
  __$$LocationsPageStateLoadingCopyWithImpl(_$LocationsPageStateLoading _value,
      $Res Function(_$LocationsPageStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationsPageStateLoading implements LocationsPageStateLoading {
  const _$LocationsPageStateLoading();

  @override
  String toString() {
    return 'LocationsPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsPageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)
        loaded,
    required TResult Function(ViamAppRobot robot) goToMainPage,
    required TResult Function(ViamAppRobot robot, String secret)
        connectionError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult? Function(ViamAppRobot robot)? goToMainPage,
    TResult? Function(ViamAppRobot robot, String secret)? connectionError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult Function(ViamAppRobot robot)? goToMainPage,
    TResult Function(ViamAppRobot robot, String secret)? connectionError,
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
    required TResult Function(LocationsPageStateIdle value) idle,
    required TResult Function(LocationsPageStateLoading value) loading,
    required TResult Function(LocationsPageStateLoaded value) loaded,
    required TResult Function(LocationsPageStateGoToMainPage value)
        goToMainPage,
    required TResult Function(LocationsPageStateConnectionError value)
        connectionError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationsPageStateIdle value)? idle,
    TResult? Function(LocationsPageStateLoading value)? loading,
    TResult? Function(LocationsPageStateLoaded value)? loaded,
    TResult? Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult? Function(LocationsPageStateConnectionError value)? connectionError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsPageStateIdle value)? idle,
    TResult Function(LocationsPageStateLoading value)? loading,
    TResult Function(LocationsPageStateLoaded value)? loaded,
    TResult Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult Function(LocationsPageStateConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationsPageStateLoading implements LocationsPageState {
  const factory LocationsPageStateLoading() = _$LocationsPageStateLoading;
}

/// @nodoc
abstract class _$$LocationsPageStateLoadedCopyWith<$Res> {
  factory _$$LocationsPageStateLoadedCopyWith(_$LocationsPageStateLoaded value,
          $Res Function(_$LocationsPageStateLoaded) then) =
      __$$LocationsPageStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ViamAppRobot> robots, List<ViamAppLocation> locations});
}

/// @nodoc
class __$$LocationsPageStateLoadedCopyWithImpl<$Res>
    extends _$LocationsPageStateCopyWithImpl<$Res, _$LocationsPageStateLoaded>
    implements _$$LocationsPageStateLoadedCopyWith<$Res> {
  __$$LocationsPageStateLoadedCopyWithImpl(_$LocationsPageStateLoaded _value,
      $Res Function(_$LocationsPageStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? robots = null,
    Object? locations = null,
  }) {
    return _then(_$LocationsPageStateLoaded(
      robots: null == robots
          ? _value._robots
          : robots // ignore: cast_nullable_to_non_nullable
              as List<ViamAppRobot>,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<ViamAppLocation>,
    ));
  }
}

/// @nodoc

class _$LocationsPageStateLoaded implements LocationsPageStateLoaded {
  const _$LocationsPageStateLoaded(
      {required final List<ViamAppRobot> robots,
      required final List<ViamAppLocation> locations})
      : _robots = robots,
        _locations = locations;

  final List<ViamAppRobot> _robots;
  @override
  List<ViamAppRobot> get robots {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_robots);
  }

  final List<ViamAppLocation> _locations;
  @override
  List<ViamAppLocation> get locations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  String toString() {
    return 'LocationsPageState.loaded(robots: $robots, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsPageStateLoaded &&
            const DeepCollectionEquality().equals(other._robots, _robots) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_robots),
      const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsPageStateLoadedCopyWith<_$LocationsPageStateLoaded>
      get copyWith =>
          __$$LocationsPageStateLoadedCopyWithImpl<_$LocationsPageStateLoaded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)
        loaded,
    required TResult Function(ViamAppRobot robot) goToMainPage,
    required TResult Function(ViamAppRobot robot, String secret)
        connectionError,
  }) {
    return loaded(robots, locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult? Function(ViamAppRobot robot)? goToMainPage,
    TResult? Function(ViamAppRobot robot, String secret)? connectionError,
  }) {
    return loaded?.call(robots, locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult Function(ViamAppRobot robot)? goToMainPage,
    TResult Function(ViamAppRobot robot, String secret)? connectionError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(robots, locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsPageStateIdle value) idle,
    required TResult Function(LocationsPageStateLoading value) loading,
    required TResult Function(LocationsPageStateLoaded value) loaded,
    required TResult Function(LocationsPageStateGoToMainPage value)
        goToMainPage,
    required TResult Function(LocationsPageStateConnectionError value)
        connectionError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationsPageStateIdle value)? idle,
    TResult? Function(LocationsPageStateLoading value)? loading,
    TResult? Function(LocationsPageStateLoaded value)? loaded,
    TResult? Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult? Function(LocationsPageStateConnectionError value)? connectionError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsPageStateIdle value)? idle,
    TResult Function(LocationsPageStateLoading value)? loading,
    TResult Function(LocationsPageStateLoaded value)? loaded,
    TResult Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult Function(LocationsPageStateConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LocationsPageStateLoaded implements LocationsPageState {
  const factory LocationsPageStateLoaded(
          {required final List<ViamAppRobot> robots,
          required final List<ViamAppLocation> locations}) =
      _$LocationsPageStateLoaded;

  List<ViamAppRobot> get robots;
  List<ViamAppLocation> get locations;
  @JsonKey(ignore: true)
  _$$LocationsPageStateLoadedCopyWith<_$LocationsPageStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationsPageStateGoToMainPageCopyWith<$Res> {
  factory _$$LocationsPageStateGoToMainPageCopyWith(
          _$LocationsPageStateGoToMainPage value,
          $Res Function(_$LocationsPageStateGoToMainPage) then) =
      __$$LocationsPageStateGoToMainPageCopyWithImpl<$Res>;
  @useResult
  $Res call({ViamAppRobot robot});
}

/// @nodoc
class __$$LocationsPageStateGoToMainPageCopyWithImpl<$Res>
    extends _$LocationsPageStateCopyWithImpl<$Res,
        _$LocationsPageStateGoToMainPage>
    implements _$$LocationsPageStateGoToMainPageCopyWith<$Res> {
  __$$LocationsPageStateGoToMainPageCopyWithImpl(
      _$LocationsPageStateGoToMainPage _value,
      $Res Function(_$LocationsPageStateGoToMainPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? robot = null,
  }) {
    return _then(_$LocationsPageStateGoToMainPage(
      null == robot
          ? _value.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as ViamAppRobot,
    ));
  }
}

/// @nodoc

class _$LocationsPageStateGoToMainPage
    implements LocationsPageStateGoToMainPage {
  const _$LocationsPageStateGoToMainPage(this.robot);

  @override
  final ViamAppRobot robot;

  @override
  String toString() {
    return 'LocationsPageState.goToMainPage(robot: $robot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsPageStateGoToMainPage &&
            (identical(other.robot, robot) || other.robot == robot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, robot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsPageStateGoToMainPageCopyWith<_$LocationsPageStateGoToMainPage>
      get copyWith => __$$LocationsPageStateGoToMainPageCopyWithImpl<
          _$LocationsPageStateGoToMainPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)
        loaded,
    required TResult Function(ViamAppRobot robot) goToMainPage,
    required TResult Function(ViamAppRobot robot, String secret)
        connectionError,
  }) {
    return goToMainPage(robot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult? Function(ViamAppRobot robot)? goToMainPage,
    TResult? Function(ViamAppRobot robot, String secret)? connectionError,
  }) {
    return goToMainPage?.call(robot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult Function(ViamAppRobot robot)? goToMainPage,
    TResult Function(ViamAppRobot robot, String secret)? connectionError,
    required TResult orElse(),
  }) {
    if (goToMainPage != null) {
      return goToMainPage(robot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsPageStateIdle value) idle,
    required TResult Function(LocationsPageStateLoading value) loading,
    required TResult Function(LocationsPageStateLoaded value) loaded,
    required TResult Function(LocationsPageStateGoToMainPage value)
        goToMainPage,
    required TResult Function(LocationsPageStateConnectionError value)
        connectionError,
  }) {
    return goToMainPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationsPageStateIdle value)? idle,
    TResult? Function(LocationsPageStateLoading value)? loading,
    TResult? Function(LocationsPageStateLoaded value)? loaded,
    TResult? Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult? Function(LocationsPageStateConnectionError value)? connectionError,
  }) {
    return goToMainPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsPageStateIdle value)? idle,
    TResult Function(LocationsPageStateLoading value)? loading,
    TResult Function(LocationsPageStateLoaded value)? loaded,
    TResult Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult Function(LocationsPageStateConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (goToMainPage != null) {
      return goToMainPage(this);
    }
    return orElse();
  }
}

abstract class LocationsPageStateGoToMainPage implements LocationsPageState {
  const factory LocationsPageStateGoToMainPage(final ViamAppRobot robot) =
      _$LocationsPageStateGoToMainPage;

  ViamAppRobot get robot;
  @JsonKey(ignore: true)
  _$$LocationsPageStateGoToMainPageCopyWith<_$LocationsPageStateGoToMainPage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationsPageStateConnectionErrorCopyWith<$Res> {
  factory _$$LocationsPageStateConnectionErrorCopyWith(
          _$LocationsPageStateConnectionError value,
          $Res Function(_$LocationsPageStateConnectionError) then) =
      __$$LocationsPageStateConnectionErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ViamAppRobot robot, String secret});
}

/// @nodoc
class __$$LocationsPageStateConnectionErrorCopyWithImpl<$Res>
    extends _$LocationsPageStateCopyWithImpl<$Res,
        _$LocationsPageStateConnectionError>
    implements _$$LocationsPageStateConnectionErrorCopyWith<$Res> {
  __$$LocationsPageStateConnectionErrorCopyWithImpl(
      _$LocationsPageStateConnectionError _value,
      $Res Function(_$LocationsPageStateConnectionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? robot = null,
    Object? secret = null,
  }) {
    return _then(_$LocationsPageStateConnectionError(
      null == robot
          ? _value.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as ViamAppRobot,
      null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationsPageStateConnectionError
    implements LocationsPageStateConnectionError {
  const _$LocationsPageStateConnectionError(this.robot, this.secret);

  @override
  final ViamAppRobot robot;
  @override
  final String secret;

  @override
  String toString() {
    return 'LocationsPageState.connectionError(robot: $robot, secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsPageStateConnectionError &&
            (identical(other.robot, robot) || other.robot == robot) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, robot, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsPageStateConnectionErrorCopyWith<
          _$LocationsPageStateConnectionError>
      get copyWith => __$$LocationsPageStateConnectionErrorCopyWithImpl<
          _$LocationsPageStateConnectionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)
        loaded,
    required TResult Function(ViamAppRobot robot) goToMainPage,
    required TResult Function(ViamAppRobot robot, String secret)
        connectionError,
  }) {
    return connectionError(robot, secret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult? Function(ViamAppRobot robot)? goToMainPage,
    TResult? Function(ViamAppRobot robot, String secret)? connectionError,
  }) {
    return connectionError?.call(robot, secret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
            List<ViamAppRobot> robots, List<ViamAppLocation> locations)?
        loaded,
    TResult Function(ViamAppRobot robot)? goToMainPage,
    TResult Function(ViamAppRobot robot, String secret)? connectionError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(robot, secret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsPageStateIdle value) idle,
    required TResult Function(LocationsPageStateLoading value) loading,
    required TResult Function(LocationsPageStateLoaded value) loaded,
    required TResult Function(LocationsPageStateGoToMainPage value)
        goToMainPage,
    required TResult Function(LocationsPageStateConnectionError value)
        connectionError,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationsPageStateIdle value)? idle,
    TResult? Function(LocationsPageStateLoading value)? loading,
    TResult? Function(LocationsPageStateLoaded value)? loaded,
    TResult? Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult? Function(LocationsPageStateConnectionError value)? connectionError,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsPageStateIdle value)? idle,
    TResult Function(LocationsPageStateLoading value)? loading,
    TResult Function(LocationsPageStateLoaded value)? loaded,
    TResult Function(LocationsPageStateGoToMainPage value)? goToMainPage,
    TResult Function(LocationsPageStateConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class LocationsPageStateConnectionError implements LocationsPageState {
  const factory LocationsPageStateConnectionError(
          final ViamAppRobot robot, final String secret) =
      _$LocationsPageStateConnectionError;

  ViamAppRobot get robot;
  String get secret;
  @JsonKey(ignore: true)
  _$$LocationsPageStateConnectionErrorCopyWith<
          _$LocationsPageStateConnectionError>
      get copyWith => throw _privateConstructorUsedError;
}
