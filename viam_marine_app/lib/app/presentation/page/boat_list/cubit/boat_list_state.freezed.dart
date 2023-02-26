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
    required TResult Function(String boatId) showConfirmationPopup,
    required TResult Function(
            String boatName, String boatId, ViamError? viamError)
        showEditBoatNamePopup,
    required TResult Function() closeConfirmationPopup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function(String boatId)? showConfirmationPopup,
    TResult? Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult? Function()? closeConfirmationPopup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    TResult Function(String boatId)? showConfirmationPopup,
    TResult Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult Function()? closeConfirmationPopup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoatListStateLoading value) loading,
    required TResult Function(BoatListStateLoaded value) loaded,
    required TResult Function(BoatListStateReloadApp value) reloadApp,
    required TResult Function(BoatListStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(BoatListStateShowEditBoatNamePopup value)
        showEditBoatNamePopup,
    required TResult Function(BoatListStateCloseConfirmationPopup value)
        closeConfirmationPopup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
    TResult? Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult? Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    TResult Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
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
    required TResult Function(String boatId) showConfirmationPopup,
    required TResult Function(
            String boatName, String boatId, ViamError? viamError)
        showEditBoatNamePopup,
    required TResult Function() closeConfirmationPopup,
  }) {
    return loading(boats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function(String boatId)? showConfirmationPopup,
    TResult? Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult? Function()? closeConfirmationPopup,
  }) {
    return loading?.call(boats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    TResult Function(String boatId)? showConfirmationPopup,
    TResult Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult Function()? closeConfirmationPopup,
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
    required TResult Function(BoatListStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(BoatListStateShowEditBoatNamePopup value)
        showEditBoatNamePopup,
    required TResult Function(BoatListStateCloseConfirmationPopup value)
        closeConfirmationPopup,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
    TResult? Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult? Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    TResult Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
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
    required TResult Function(String boatId) showConfirmationPopup,
    required TResult Function(
            String boatName, String boatId, ViamError? viamError)
        showEditBoatNamePopup,
    required TResult Function() closeConfirmationPopup,
  }) {
    return loaded(boats, currentBoatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function(String boatId)? showConfirmationPopup,
    TResult? Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult? Function()? closeConfirmationPopup,
  }) {
    return loaded?.call(boats, currentBoatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    TResult Function(String boatId)? showConfirmationPopup,
    TResult Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult Function()? closeConfirmationPopup,
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
    required TResult Function(BoatListStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(BoatListStateShowEditBoatNamePopup value)
        showEditBoatNamePopup,
    required TResult Function(BoatListStateCloseConfirmationPopup value)
        closeConfirmationPopup,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
    TResult? Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult? Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    TResult Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
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
    required TResult Function(String boatId) showConfirmationPopup,
    required TResult Function(
            String boatName, String boatId, ViamError? viamError)
        showEditBoatNamePopup,
    required TResult Function() closeConfirmationPopup,
  }) {
    return reloadApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function(String boatId)? showConfirmationPopup,
    TResult? Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult? Function()? closeConfirmationPopup,
  }) {
    return reloadApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    TResult Function(String boatId)? showConfirmationPopup,
    TResult Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult Function()? closeConfirmationPopup,
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
    required TResult Function(BoatListStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(BoatListStateShowEditBoatNamePopup value)
        showEditBoatNamePopup,
    required TResult Function(BoatListStateCloseConfirmationPopup value)
        closeConfirmationPopup,
  }) {
    return reloadApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
    TResult? Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult? Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
  }) {
    return reloadApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    TResult Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
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

/// @nodoc
abstract class _$$BoatListStateShowConfirmationPopupCopyWith<$Res> {
  factory _$$BoatListStateShowConfirmationPopupCopyWith(
          _$BoatListStateShowConfirmationPopup value,
          $Res Function(_$BoatListStateShowConfirmationPopup) then) =
      __$$BoatListStateShowConfirmationPopupCopyWithImpl<$Res>;
  @useResult
  $Res call({String boatId});
}

/// @nodoc
class __$$BoatListStateShowConfirmationPopupCopyWithImpl<$Res>
    extends _$BoatListStateCopyWithImpl<$Res,
        _$BoatListStateShowConfirmationPopup>
    implements _$$BoatListStateShowConfirmationPopupCopyWith<$Res> {
  __$$BoatListStateShowConfirmationPopupCopyWithImpl(
      _$BoatListStateShowConfirmationPopup _value,
      $Res Function(_$BoatListStateShowConfirmationPopup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boatId = null,
  }) {
    return _then(_$BoatListStateShowConfirmationPopup(
      boatId: null == boatId
          ? _value.boatId
          : boatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BoatListStateShowConfirmationPopup
    implements BoatListStateShowConfirmationPopup {
  const _$BoatListStateShowConfirmationPopup({required this.boatId});

  @override
  final String boatId;

  @override
  String toString() {
    return 'BoatListState.showConfirmationPopup(boatId: $boatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoatListStateShowConfirmationPopup &&
            (identical(other.boatId, boatId) || other.boatId == boatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoatListStateShowConfirmationPopupCopyWith<
          _$BoatListStateShowConfirmationPopup>
      get copyWith => __$$BoatListStateShowConfirmationPopupCopyWithImpl<
          _$BoatListStateShowConfirmationPopup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats, String? currentBoatId)
        loaded,
    required TResult Function() reloadApp,
    required TResult Function(String boatId) showConfirmationPopup,
    required TResult Function(
            String boatName, String boatId, ViamError? viamError)
        showEditBoatNamePopup,
    required TResult Function() closeConfirmationPopup,
  }) {
    return showConfirmationPopup(boatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function(String boatId)? showConfirmationPopup,
    TResult? Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult? Function()? closeConfirmationPopup,
  }) {
    return showConfirmationPopup?.call(boatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    TResult Function(String boatId)? showConfirmationPopup,
    TResult Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult Function()? closeConfirmationPopup,
    required TResult orElse(),
  }) {
    if (showConfirmationPopup != null) {
      return showConfirmationPopup(boatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoatListStateLoading value) loading,
    required TResult Function(BoatListStateLoaded value) loaded,
    required TResult Function(BoatListStateReloadApp value) reloadApp,
    required TResult Function(BoatListStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(BoatListStateShowEditBoatNamePopup value)
        showEditBoatNamePopup,
    required TResult Function(BoatListStateCloseConfirmationPopup value)
        closeConfirmationPopup,
  }) {
    return showConfirmationPopup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
    TResult? Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult? Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
  }) {
    return showConfirmationPopup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    TResult Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    required TResult orElse(),
  }) {
    if (showConfirmationPopup != null) {
      return showConfirmationPopup(this);
    }
    return orElse();
  }
}

abstract class BoatListStateShowConfirmationPopup implements BoatListState {
  const factory BoatListStateShowConfirmationPopup(
      {required final String boatId}) = _$BoatListStateShowConfirmationPopup;

  String get boatId;
  @JsonKey(ignore: true)
  _$$BoatListStateShowConfirmationPopupCopyWith<
          _$BoatListStateShowConfirmationPopup>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoatListStateShowEditBoatNamePopupCopyWith<$Res> {
  factory _$$BoatListStateShowEditBoatNamePopupCopyWith(
          _$BoatListStateShowEditBoatNamePopup value,
          $Res Function(_$BoatListStateShowEditBoatNamePopup) then) =
      __$$BoatListStateShowEditBoatNamePopupCopyWithImpl<$Res>;
  @useResult
  $Res call({String boatName, String boatId, ViamError? viamError});
}

/// @nodoc
class __$$BoatListStateShowEditBoatNamePopupCopyWithImpl<$Res>
    extends _$BoatListStateCopyWithImpl<$Res,
        _$BoatListStateShowEditBoatNamePopup>
    implements _$$BoatListStateShowEditBoatNamePopupCopyWith<$Res> {
  __$$BoatListStateShowEditBoatNamePopupCopyWithImpl(
      _$BoatListStateShowEditBoatNamePopup _value,
      $Res Function(_$BoatListStateShowEditBoatNamePopup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boatName = null,
    Object? boatId = null,
    Object? viamError = freezed,
  }) {
    return _then(_$BoatListStateShowEditBoatNamePopup(
      boatName: null == boatName
          ? _value.boatName
          : boatName // ignore: cast_nullable_to_non_nullable
              as String,
      boatId: null == boatId
          ? _value.boatId
          : boatId // ignore: cast_nullable_to_non_nullable
              as String,
      viamError: freezed == viamError
          ? _value.viamError
          : viamError // ignore: cast_nullable_to_non_nullable
              as ViamError?,
    ));
  }
}

/// @nodoc

class _$BoatListStateShowEditBoatNamePopup
    implements BoatListStateShowEditBoatNamePopup {
  const _$BoatListStateShowEditBoatNamePopup(
      {required this.boatName, required this.boatId, required this.viamError});

  @override
  final String boatName;
  @override
  final String boatId;
  @override
  final ViamError? viamError;

  @override
  String toString() {
    return 'BoatListState.showEditBoatNamePopup(boatName: $boatName, boatId: $boatId, viamError: $viamError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoatListStateShowEditBoatNamePopup &&
            (identical(other.boatName, boatName) ||
                other.boatName == boatName) &&
            (identical(other.boatId, boatId) || other.boatId == boatId) &&
            (identical(other.viamError, viamError) ||
                other.viamError == viamError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boatName, boatId, viamError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoatListStateShowEditBoatNamePopupCopyWith<
          _$BoatListStateShowEditBoatNamePopup>
      get copyWith => __$$BoatListStateShowEditBoatNamePopupCopyWithImpl<
          _$BoatListStateShowEditBoatNamePopup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ViamBoat> boats) loading,
    required TResult Function(List<ViamBoat> boats, String? currentBoatId)
        loaded,
    required TResult Function() reloadApp,
    required TResult Function(String boatId) showConfirmationPopup,
    required TResult Function(
            String boatName, String boatId, ViamError? viamError)
        showEditBoatNamePopup,
    required TResult Function() closeConfirmationPopup,
  }) {
    return showEditBoatNamePopup(boatName, boatId, viamError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function(String boatId)? showConfirmationPopup,
    TResult? Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult? Function()? closeConfirmationPopup,
  }) {
    return showEditBoatNamePopup?.call(boatName, boatId, viamError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    TResult Function(String boatId)? showConfirmationPopup,
    TResult Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult Function()? closeConfirmationPopup,
    required TResult orElse(),
  }) {
    if (showEditBoatNamePopup != null) {
      return showEditBoatNamePopup(boatName, boatId, viamError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoatListStateLoading value) loading,
    required TResult Function(BoatListStateLoaded value) loaded,
    required TResult Function(BoatListStateReloadApp value) reloadApp,
    required TResult Function(BoatListStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(BoatListStateShowEditBoatNamePopup value)
        showEditBoatNamePopup,
    required TResult Function(BoatListStateCloseConfirmationPopup value)
        closeConfirmationPopup,
  }) {
    return showEditBoatNamePopup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
    TResult? Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult? Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
  }) {
    return showEditBoatNamePopup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    TResult Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    required TResult orElse(),
  }) {
    if (showEditBoatNamePopup != null) {
      return showEditBoatNamePopup(this);
    }
    return orElse();
  }
}

abstract class BoatListStateShowEditBoatNamePopup implements BoatListState {
  const factory BoatListStateShowEditBoatNamePopup(
          {required final String boatName,
          required final String boatId,
          required final ViamError? viamError}) =
      _$BoatListStateShowEditBoatNamePopup;

  String get boatName;
  String get boatId;
  ViamError? get viamError;
  @JsonKey(ignore: true)
  _$$BoatListStateShowEditBoatNamePopupCopyWith<
          _$BoatListStateShowEditBoatNamePopup>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoatListStateCloseConfirmationPopupCopyWith<$Res> {
  factory _$$BoatListStateCloseConfirmationPopupCopyWith(
          _$BoatListStateCloseConfirmationPopup value,
          $Res Function(_$BoatListStateCloseConfirmationPopup) then) =
      __$$BoatListStateCloseConfirmationPopupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoatListStateCloseConfirmationPopupCopyWithImpl<$Res>
    extends _$BoatListStateCopyWithImpl<$Res,
        _$BoatListStateCloseConfirmationPopup>
    implements _$$BoatListStateCloseConfirmationPopupCopyWith<$Res> {
  __$$BoatListStateCloseConfirmationPopupCopyWithImpl(
      _$BoatListStateCloseConfirmationPopup _value,
      $Res Function(_$BoatListStateCloseConfirmationPopup) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoatListStateCloseConfirmationPopup
    implements BoatListStateCloseConfirmationPopup {
  const _$BoatListStateCloseConfirmationPopup();

  @override
  String toString() {
    return 'BoatListState.closeConfirmationPopup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoatListStateCloseConfirmationPopup);
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
    required TResult Function(String boatId) showConfirmationPopup,
    required TResult Function(
            String boatName, String boatId, ViamError? viamError)
        showEditBoatNamePopup,
    required TResult Function() closeConfirmationPopup,
  }) {
    return closeConfirmationPopup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ViamBoat> boats)? loading,
    TResult? Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function(String boatId)? showConfirmationPopup,
    TResult? Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult? Function()? closeConfirmationPopup,
  }) {
    return closeConfirmationPopup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ViamBoat> boats)? loading,
    TResult Function(List<ViamBoat> boats, String? currentBoatId)? loaded,
    TResult Function()? reloadApp,
    TResult Function(String boatId)? showConfirmationPopup,
    TResult Function(String boatName, String boatId, ViamError? viamError)?
        showEditBoatNamePopup,
    TResult Function()? closeConfirmationPopup,
    required TResult orElse(),
  }) {
    if (closeConfirmationPopup != null) {
      return closeConfirmationPopup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoatListStateLoading value) loading,
    required TResult Function(BoatListStateLoaded value) loaded,
    required TResult Function(BoatListStateReloadApp value) reloadApp,
    required TResult Function(BoatListStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(BoatListStateShowEditBoatNamePopup value)
        showEditBoatNamePopup,
    required TResult Function(BoatListStateCloseConfirmationPopup value)
        closeConfirmationPopup,
  }) {
    return closeConfirmationPopup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoatListStateLoading value)? loading,
    TResult? Function(BoatListStateLoaded value)? loaded,
    TResult? Function(BoatListStateReloadApp value)? reloadApp,
    TResult? Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult? Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
  }) {
    return closeConfirmationPopup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoatListStateLoading value)? loading,
    TResult Function(BoatListStateLoaded value)? loaded,
    TResult Function(BoatListStateReloadApp value)? reloadApp,
    TResult Function(BoatListStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(BoatListStateShowEditBoatNamePopup value)?
        showEditBoatNamePopup,
    TResult Function(BoatListStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    required TResult orElse(),
  }) {
    if (closeConfirmationPopup != null) {
      return closeConfirmationPopup(this);
    }
    return orElse();
  }
}

abstract class BoatListStateCloseConfirmationPopup implements BoatListState {
  const factory BoatListStateCloseConfirmationPopup() =
      _$BoatListStateCloseConfirmationPopup;
}
