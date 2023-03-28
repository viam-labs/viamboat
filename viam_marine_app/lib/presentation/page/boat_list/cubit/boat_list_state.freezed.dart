// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boat_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoatListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats, String? currentBoatId)
        loaded,
    required TResult Function() reloadApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoatListStateLoading value) loading,
    required TResult Function(BoatListStateLoaded value) loaded,
    required TResult Function(BoatListStateReloadApp value) reloadApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoatListStateCopyWith<$Res> {
  factory $BoatListStateCopyWith(
          BoatListState value, $Res Function(BoatListState) then) =
      _$BoatListStateCopyWithImpl<$Res, BoatListState>;
}

/// @nodoc
class _$BoatListStateCopyWithImpl<$Res, $Val extends BoatListState>
    implements $BoatListStateCopyWith<$Res> {
  _$BoatListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BoatListStateLoadingCopyWith<$Res> {
  factory _$$BoatListStateLoadingCopyWith(_$BoatListStateLoading value,
          $Res Function(_$BoatListStateLoading) then) =
      __$$BoatListStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ViamBoat> boats});
}

/// @nodoc
class __$$BoatListStateLoadingCopyWithImpl<$Res>
    extends _$BoatListStateCopyWithImpl<$Res, _$BoatListStateLoading>
    implements _$$BoatListStateLoadingCopyWith<$Res> {
  __$$BoatListStateLoadingCopyWithImpl(_$BoatListStateLoading _value,
      $Res Function(_$BoatListStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boats = null,
  }) {
    return _then(_$BoatListStateLoading(
      boats: null == boats
          ? _value._boats
          : boats // ignore: cast_nullable_to_non_nullable
              as List<ViamBoat>,
    ));
  }
}

/// @nodoc

class _$BoatListStateLoading implements BoatListStateLoading {
  const _$BoatListStateLoading({required final List<ViamBoat> boats})
      : _boats = boats;

  final List<ViamBoat> _boats;
  @override
  List<ViamBoat> get boats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boats);
  }

  @override
  String toString() {
    return 'BoatListState.loading(boats: $boats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoatListStateLoading &&
            const DeepCollectionEquality().equals(other._boats, _boats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_boats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoatListStateLoadingCopyWith<_$BoatListStateLoading> get copyWith =>
      __$$BoatListStateLoadingCopyWithImpl<_$BoatListStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats, String? currentBoatId)
        loaded,
    required TResult Function() reloadApp,
  }) {
    return loading(boats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
  }) {
    return loading?.call(boats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
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
    required TResult Function(BoatListStateLoading value) loading,
    required TResult Function(BoatListStateLoaded value) loaded,
    required TResult Function(BoatListStateReloadApp value) reloadApp,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BoatListStateLoading implements BoatListState {
  const factory BoatListStateLoading({required final List<ViamBoat> boats}) =
      _$BoatListStateLoading;

  List<ViamBoat> get boats;
  @JsonKey(ignore: true)
  _$$BoatListStateLoadingCopyWith<_$BoatListStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoatListStateLoadedCopyWith<$Res> {
  factory _$$BoatListStateLoadedCopyWith(_$BoatListStateLoaded value,
          $Res Function(_$BoatListStateLoaded) then) =
      __$$BoatListStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ViamBoat> boats, String? currentBoatId});
}

/// @nodoc
class __$$BoatListStateLoadedCopyWithImpl<$Res>
    extends _$BoatListStateCopyWithImpl<$Res, _$BoatListStateLoaded>
    implements _$$BoatListStateLoadedCopyWith<$Res> {
  __$$BoatListStateLoadedCopyWithImpl(
      _$BoatListStateLoaded _value, $Res Function(_$BoatListStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boats = null,
    Object? currentBoatId = freezed,
  }) {
    return _then(_$BoatListStateLoaded(
      boats: null == boats
          ? _value._boats
          : boats // ignore: cast_nullable_to_non_nullable
              as List<ViamBoat>,
      currentBoatId: freezed == currentBoatId
          ? _value.currentBoatId
          : currentBoatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BoatListStateLoaded implements BoatListStateLoaded {
  const _$BoatListStateLoaded(
      {required final List<ViamBoat> boats, this.currentBoatId})
      : _boats = boats;

  final List<ViamBoat> _boats;
  @override
  List<ViamBoat> get boats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boats);
  }

  @override
  final String? currentBoatId;

  @override
  String toString() {
    return 'BoatListState.loaded(boats: $boats, currentBoatId: $currentBoatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoatListStateLoaded &&
            const DeepCollectionEquality().equals(other._boats, _boats) &&
            (identical(other.currentBoatId, currentBoatId) ||
                other.currentBoatId == currentBoatId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_boats), currentBoatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoatListStateLoadedCopyWith<_$BoatListStateLoaded> get copyWith =>
      __$$BoatListStateLoadedCopyWithImpl<_$BoatListStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats, String? currentBoatId)
        loaded,
    required TResult Function() reloadApp,
  }) {
    return loaded(boats, currentBoatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
  }) {
    return loaded?.call(boats, currentBoatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(boats, currentBoatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoatListStateLoading value) loading,
    required TResult Function(BoatListStateLoaded value) loaded,
    required TResult Function(BoatListStateReloadApp value) reloadApp,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BoatListStateLoaded implements BoatListState {
  const factory BoatListStateLoaded(
      {required final List<ViamBoat> boats,
      final String? currentBoatId}) = _$BoatListStateLoaded;

  List<ViamBoat> get boats;
  String? get currentBoatId;
  @JsonKey(ignore: true)
  _$$BoatListStateLoadedCopyWith<_$BoatListStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoatListStateReloadAppCopyWith<$Res> {
  factory _$$BoatListStateReloadAppCopyWith(_$BoatListStateReloadApp value,
          $Res Function(_$BoatListStateReloadApp) then) =
      __$$BoatListStateReloadAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoatListStateReloadAppCopyWithImpl<$Res>
    extends _$BoatListStateCopyWithImpl<$Res, _$BoatListStateReloadApp>
    implements _$$BoatListStateReloadAppCopyWith<$Res> {
  __$$BoatListStateReloadAppCopyWithImpl(_$BoatListStateReloadApp _value,
      $Res Function(_$BoatListStateReloadApp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoatListStateReloadApp implements BoatListStateReloadApp {
  const _$BoatListStateReloadApp();

  @override
  String toString() {
    return 'BoatListState.reloadApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BoatListStateReloadApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats, String? currentBoatId)
        loaded,
    required TResult Function() reloadApp,
  }) {
    return reloadApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
  }) {
    return reloadApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
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
    required TResult Function(BoatListStateLoading value) loading,
    required TResult Function(BoatListStateLoaded value) loaded,
    required TResult Function(BoatListStateReloadApp value) reloadApp,
  }) {
    return reloadApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
  }) {
    return reloadApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    required TResult orElse(),
  }) {
    if (reloadApp != null) {
      return reloadApp(this);
    }
    return orElse();
  }
}

abstract class BoatListStateReloadApp implements BoatListState {
  const factory BoatListStateReloadApp() = _$BoatListStateReloadApp;
}
