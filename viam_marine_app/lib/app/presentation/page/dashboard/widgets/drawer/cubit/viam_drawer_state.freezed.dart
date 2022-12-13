// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'viam_drawer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViamDrawerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats) loaded,
    required TResult Function() reloadApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats)? loaded,
    TResult? Function()? reloadApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats)? loaded,
    TResult Function()? reloadApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViamDrawerStateLoading value) loading,
    required TResult Function(ViamDrawerStateLoaded value) loaded,
    required TResult Function(ViamDrawerStateReloadApp value) reloadApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViamDrawerStateLoading value)? loading,
    TResult? Function(ViamDrawerStateLoaded value)? loaded,
    TResult? Function(ViamDrawerStateReloadApp value)? reloadApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViamDrawerStateLoading value)? loading,
    TResult Function(ViamDrawerStateLoaded value)? loaded,
    TResult Function(ViamDrawerStateReloadApp value)? reloadApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViamDrawerStateCopyWith<$Res> {
  factory $ViamDrawerStateCopyWith(
          ViamDrawerState value, $Res Function(ViamDrawerState) then) =
      _$ViamDrawerStateCopyWithImpl<$Res, ViamDrawerState>;
}

/// @nodoc
class _$ViamDrawerStateCopyWithImpl<$Res, $Val extends ViamDrawerState>
    implements $ViamDrawerStateCopyWith<$Res> {
  _$ViamDrawerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViamDrawerStateLoadingCopyWith<$Res> {
  factory _$$ViamDrawerStateLoadingCopyWith(_$ViamDrawerStateLoading value,
          $Res Function(_$ViamDrawerStateLoading) then) =
      __$$ViamDrawerStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ViamBoat> boats});
}

/// @nodoc
class __$$ViamDrawerStateLoadingCopyWithImpl<$Res>
    extends _$ViamDrawerStateCopyWithImpl<$Res, _$ViamDrawerStateLoading>
    implements _$$ViamDrawerStateLoadingCopyWith<$Res> {
  __$$ViamDrawerStateLoadingCopyWithImpl(_$ViamDrawerStateLoading _value,
      $Res Function(_$ViamDrawerStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boats = null,
  }) {
    return _then(_$ViamDrawerStateLoading(
      boats: null == boats
          ? _value._boats
          : boats // ignore: cast_nullable_to_non_nullable
              as List<ViamBoat>,
    ));
  }
}

/// @nodoc

class _$ViamDrawerStateLoading implements ViamDrawerStateLoading {
  const _$ViamDrawerStateLoading({required final List<ViamBoat> boats})
      : _boats = boats;

  final List<ViamBoat> _boats;
  @override
  List<ViamBoat> get boats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boats);
  }

  @override
  String toString() {
    return 'ViamDrawerState.loading(boats: $boats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViamDrawerStateLoading &&
            const DeepCollectionEquality().equals(other._boats, _boats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_boats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViamDrawerStateLoadingCopyWith<_$ViamDrawerStateLoading> get copyWith =>
      __$$ViamDrawerStateLoadingCopyWithImpl<_$ViamDrawerStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats) loaded,
    required TResult Function() reloadApp,
  }) {
    return loading(boats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats)? loaded,
    TResult? Function()? reloadApp,
  }) {
    return loading?.call(boats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats)? loaded,
    TResult Function()? reloadApp,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(boats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViamDrawerStateLoading value) loading,
    required TResult Function(ViamDrawerStateLoaded value) loaded,
    required TResult Function(ViamDrawerStateReloadApp value) reloadApp,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViamDrawerStateLoading value)? loading,
    TResult? Function(ViamDrawerStateLoaded value)? loaded,
    TResult? Function(ViamDrawerStateReloadApp value)? reloadApp,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViamDrawerStateLoading value)? loading,
    TResult Function(ViamDrawerStateLoaded value)? loaded,
    TResult Function(ViamDrawerStateReloadApp value)? reloadApp,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViamDrawerStateLoading implements ViamDrawerState {
  const factory ViamDrawerStateLoading({required final List<ViamBoat> boats}) =
      _$ViamDrawerStateLoading;

  List<ViamBoat> get boats;
  @JsonKey(ignore: true)
  _$$ViamDrawerStateLoadingCopyWith<_$ViamDrawerStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViamDrawerStateLoadedCopyWith<$Res> {
  factory _$$ViamDrawerStateLoadedCopyWith(_$ViamDrawerStateLoaded value,
          $Res Function(_$ViamDrawerStateLoaded) then) =
      __$$ViamDrawerStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ViamBoat> boats});
}

/// @nodoc
class __$$ViamDrawerStateLoadedCopyWithImpl<$Res>
    extends _$ViamDrawerStateCopyWithImpl<$Res, _$ViamDrawerStateLoaded>
    implements _$$ViamDrawerStateLoadedCopyWith<$Res> {
  __$$ViamDrawerStateLoadedCopyWithImpl(_$ViamDrawerStateLoaded _value,
      $Res Function(_$ViamDrawerStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boats = null,
  }) {
    return _then(_$ViamDrawerStateLoaded(
      boats: null == boats
          ? _value._boats
          : boats // ignore: cast_nullable_to_non_nullable
              as List<ViamBoat>,
    ));
  }
}

/// @nodoc

class _$ViamDrawerStateLoaded implements ViamDrawerStateLoaded {
  const _$ViamDrawerStateLoaded({required final List<ViamBoat> boats})
      : _boats = boats;

  final List<ViamBoat> _boats;
  @override
  List<ViamBoat> get boats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boats);
  }

  @override
  String toString() {
    return 'ViamDrawerState.loaded(boats: $boats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViamDrawerStateLoaded &&
            const DeepCollectionEquality().equals(other._boats, _boats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_boats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViamDrawerStateLoadedCopyWith<_$ViamDrawerStateLoaded> get copyWith =>
      __$$ViamDrawerStateLoadedCopyWithImpl<_$ViamDrawerStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats) loaded,
    required TResult Function() reloadApp,
  }) {
    return loaded(boats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats)? loaded,
    TResult? Function()? reloadApp,
  }) {
    return loaded?.call(boats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats)? loaded,
    TResult Function()? reloadApp,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(boats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViamDrawerStateLoading value) loading,
    required TResult Function(ViamDrawerStateLoaded value) loaded,
    required TResult Function(ViamDrawerStateReloadApp value) reloadApp,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViamDrawerStateLoading value)? loading,
    TResult? Function(ViamDrawerStateLoaded value)? loaded,
    TResult? Function(ViamDrawerStateReloadApp value)? reloadApp,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViamDrawerStateLoading value)? loading,
    TResult Function(ViamDrawerStateLoaded value)? loaded,
    TResult Function(ViamDrawerStateReloadApp value)? reloadApp,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ViamDrawerStateLoaded implements ViamDrawerState {
  const factory ViamDrawerStateLoaded({required final List<ViamBoat> boats}) =
      _$ViamDrawerStateLoaded;

  List<ViamBoat> get boats;
  @JsonKey(ignore: true)
  _$$ViamDrawerStateLoadedCopyWith<_$ViamDrawerStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViamDrawerStateReloadAppCopyWith<$Res> {
  factory _$$ViamDrawerStateReloadAppCopyWith(_$ViamDrawerStateReloadApp value,
          $Res Function(_$ViamDrawerStateReloadApp) then) =
      __$$ViamDrawerStateReloadAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViamDrawerStateReloadAppCopyWithImpl<$Res>
    extends _$ViamDrawerStateCopyWithImpl<$Res, _$ViamDrawerStateReloadApp>
    implements _$$ViamDrawerStateReloadAppCopyWith<$Res> {
  __$$ViamDrawerStateReloadAppCopyWithImpl(_$ViamDrawerStateReloadApp _value,
      $Res Function(_$ViamDrawerStateReloadApp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViamDrawerStateReloadApp implements ViamDrawerStateReloadApp {
  const _$ViamDrawerStateReloadApp();

  @override
  String toString() {
    return 'ViamDrawerState.reloadApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViamDrawerStateReloadApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats) loaded,
    required TResult Function() reloadApp,
  }) {
    return reloadApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats)? loaded,
    TResult? Function()? reloadApp,
  }) {
    return reloadApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats)? loaded,
    TResult Function()? reloadApp,
    required TResult orElse(),
  }) {
    if (reloadApp != null) {
      return reloadApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViamDrawerStateLoading value) loading,
    required TResult Function(ViamDrawerStateLoaded value) loaded,
    required TResult Function(ViamDrawerStateReloadApp value) reloadApp,
  }) {
    return reloadApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViamDrawerStateLoading value)? loading,
    TResult? Function(ViamDrawerStateLoaded value)? loaded,
    TResult? Function(ViamDrawerStateReloadApp value)? reloadApp,
  }) {
    return reloadApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViamDrawerStateLoading value)? loading,
    TResult Function(ViamDrawerStateLoaded value)? loaded,
    TResult Function(ViamDrawerStateReloadApp value)? reloadApp,
    required TResult orElse(),
  }) {
    if (reloadApp != null) {
      return reloadApp(this);
    }
    return orElse();
  }
}

abstract class ViamDrawerStateReloadApp implements ViamDrawerState {
  const factory ViamDrawerStateReloadApp() = _$ViamDrawerStateReloadApp;
}
