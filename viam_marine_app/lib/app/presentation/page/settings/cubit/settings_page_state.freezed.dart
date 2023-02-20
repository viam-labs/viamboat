// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViamBoat? boat) loading,
    required TResult Function(ViamBoat? boat) loaded,
    required TResult Function() reloadApp,
    required TResult Function() showConfirmationPopup,
    required TResult Function() closeConfirmationPopup,
    required TResult Function() navigateToChangeBoatName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViamBoat? boat)? loading,
    TResult? Function(ViamBoat? boat)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function()? showConfirmationPopup,
    TResult? Function()? closeConfirmationPopup,
    TResult? Function()? navigateToChangeBoatName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViamBoat? boat)? loading,
    TResult Function(ViamBoat? boat)? loaded,
    TResult Function()? reloadApp,
    TResult Function()? showConfirmationPopup,
    TResult Function()? closeConfirmationPopup,
    TResult Function()? navigateToChangeBoatName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPageStateLoading value) loading,
    required TResult Function(SettingsPageStateLoaded value) loaded,
    required TResult Function(SettingsPageStateReloadApp value) reloadApp,
    required TResult Function(SettingsPageStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(SettingsPageStateCloseConfirmationPopup value)
        closeConfirmationPopup,
    required TResult Function(SettingsPageStateNavigateToChangeBoatName value)
        navigateToChangeBoatName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPageStateLoading value)? loading,
    TResult? Function(SettingsPageStateLoaded value)? loaded,
    TResult? Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult? Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult? Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPageStateLoading value)? loading,
    TResult Function(SettingsPageStateLoaded value)? loaded,
    TResult Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPageStateCopyWith<$Res> {
  factory $SettingsPageStateCopyWith(
          SettingsPageState value, $Res Function(SettingsPageState) then) =
      _$SettingsPageStateCopyWithImpl<$Res, SettingsPageState>;
}

/// @nodoc
class _$SettingsPageStateCopyWithImpl<$Res, $Val extends SettingsPageState>
    implements $SettingsPageStateCopyWith<$Res> {
  _$SettingsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsPageStateLoadingCopyWith<$Res> {
  factory _$$SettingsPageStateLoadingCopyWith(_$SettingsPageStateLoading value,
          $Res Function(_$SettingsPageStateLoading) then) =
      __$$SettingsPageStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({ViamBoat? boat});
}

/// @nodoc
class __$$SettingsPageStateLoadingCopyWithImpl<$Res>
    extends _$SettingsPageStateCopyWithImpl<$Res, _$SettingsPageStateLoading>
    implements _$$SettingsPageStateLoadingCopyWith<$Res> {
  __$$SettingsPageStateLoadingCopyWithImpl(_$SettingsPageStateLoading _value,
      $Res Function(_$SettingsPageStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boat = freezed,
  }) {
    return _then(_$SettingsPageStateLoading(
      boat: freezed == boat
          ? _value.boat
          : boat // ignore: cast_nullable_to_non_nullable
              as ViamBoat?,
    ));
  }
}

/// @nodoc

class _$SettingsPageStateLoading implements SettingsPageStateLoading {
  const _$SettingsPageStateLoading({this.boat});

  @override
  final ViamBoat? boat;

  @override
  String toString() {
    return 'SettingsPageState.loading(boat: $boat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsPageStateLoading &&
            (identical(other.boat, boat) || other.boat == boat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsPageStateLoadingCopyWith<_$SettingsPageStateLoading>
      get copyWith =>
          __$$SettingsPageStateLoadingCopyWithImpl<_$SettingsPageStateLoading>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViamBoat? boat) loading,
    required TResult Function(ViamBoat? boat) loaded,
    required TResult Function() reloadApp,
    required TResult Function() showConfirmationPopup,
    required TResult Function() closeConfirmationPopup,
    required TResult Function() navigateToChangeBoatName,
  }) {
    return loading(boat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViamBoat? boat)? loading,
    TResult? Function(ViamBoat? boat)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function()? showConfirmationPopup,
    TResult? Function()? closeConfirmationPopup,
    TResult? Function()? navigateToChangeBoatName,
  }) {
    return loading?.call(boat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViamBoat? boat)? loading,
    TResult Function(ViamBoat? boat)? loaded,
    TResult Function()? reloadApp,
    TResult Function()? showConfirmationPopup,
    TResult Function()? closeConfirmationPopup,
    TResult Function()? navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(boat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPageStateLoading value) loading,
    required TResult Function(SettingsPageStateLoaded value) loaded,
    required TResult Function(SettingsPageStateReloadApp value) reloadApp,
    required TResult Function(SettingsPageStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(SettingsPageStateCloseConfirmationPopup value)
        closeConfirmationPopup,
    required TResult Function(SettingsPageStateNavigateToChangeBoatName value)
        navigateToChangeBoatName,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPageStateLoading value)? loading,
    TResult? Function(SettingsPageStateLoaded value)? loaded,
    TResult? Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult? Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult? Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPageStateLoading value)? loading,
    TResult Function(SettingsPageStateLoaded value)? loaded,
    TResult Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingsPageStateLoading implements SettingsPageState {
  const factory SettingsPageStateLoading({final ViamBoat? boat}) =
      _$SettingsPageStateLoading;

  ViamBoat? get boat;
  @JsonKey(ignore: true)
  _$$SettingsPageStateLoadingCopyWith<_$SettingsPageStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsPageStateLoadedCopyWith<$Res> {
  factory _$$SettingsPageStateLoadedCopyWith(_$SettingsPageStateLoaded value,
          $Res Function(_$SettingsPageStateLoaded) then) =
      __$$SettingsPageStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ViamBoat? boat});
}

/// @nodoc
class __$$SettingsPageStateLoadedCopyWithImpl<$Res>
    extends _$SettingsPageStateCopyWithImpl<$Res, _$SettingsPageStateLoaded>
    implements _$$SettingsPageStateLoadedCopyWith<$Res> {
  __$$SettingsPageStateLoadedCopyWithImpl(_$SettingsPageStateLoaded _value,
      $Res Function(_$SettingsPageStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boat = freezed,
  }) {
    return _then(_$SettingsPageStateLoaded(
      boat: freezed == boat
          ? _value.boat
          : boat // ignore: cast_nullable_to_non_nullable
              as ViamBoat?,
    ));
  }
}

/// @nodoc

class _$SettingsPageStateLoaded implements SettingsPageStateLoaded {
  const _$SettingsPageStateLoaded({required this.boat});

  @override
  final ViamBoat? boat;

  @override
  String toString() {
    return 'SettingsPageState.loaded(boat: $boat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsPageStateLoaded &&
            (identical(other.boat, boat) || other.boat == boat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsPageStateLoadedCopyWith<_$SettingsPageStateLoaded> get copyWith =>
      __$$SettingsPageStateLoadedCopyWithImpl<_$SettingsPageStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViamBoat? boat) loading,
    required TResult Function(ViamBoat? boat) loaded,
    required TResult Function() reloadApp,
    required TResult Function() showConfirmationPopup,
    required TResult Function() closeConfirmationPopup,
    required TResult Function() navigateToChangeBoatName,
  }) {
    return loaded(boat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViamBoat? boat)? loading,
    TResult? Function(ViamBoat? boat)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function()? showConfirmationPopup,
    TResult? Function()? closeConfirmationPopup,
    TResult? Function()? navigateToChangeBoatName,
  }) {
    return loaded?.call(boat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViamBoat? boat)? loading,
    TResult Function(ViamBoat? boat)? loaded,
    TResult Function()? reloadApp,
    TResult Function()? showConfirmationPopup,
    TResult Function()? closeConfirmationPopup,
    TResult Function()? navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(boat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPageStateLoading value) loading,
    required TResult Function(SettingsPageStateLoaded value) loaded,
    required TResult Function(SettingsPageStateReloadApp value) reloadApp,
    required TResult Function(SettingsPageStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(SettingsPageStateCloseConfirmationPopup value)
        closeConfirmationPopup,
    required TResult Function(SettingsPageStateNavigateToChangeBoatName value)
        navigateToChangeBoatName,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPageStateLoading value)? loading,
    TResult? Function(SettingsPageStateLoaded value)? loaded,
    TResult? Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult? Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult? Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPageStateLoading value)? loading,
    TResult Function(SettingsPageStateLoaded value)? loaded,
    TResult Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SettingsPageStateLoaded implements SettingsPageState {
  const factory SettingsPageStateLoaded({required final ViamBoat? boat}) =
      _$SettingsPageStateLoaded;

  ViamBoat? get boat;
  @JsonKey(ignore: true)
  _$$SettingsPageStateLoadedCopyWith<_$SettingsPageStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsPageStateReloadAppCopyWith<$Res> {
  factory _$$SettingsPageStateReloadAppCopyWith(
          _$SettingsPageStateReloadApp value,
          $Res Function(_$SettingsPageStateReloadApp) then) =
      __$$SettingsPageStateReloadAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsPageStateReloadAppCopyWithImpl<$Res>
    extends _$SettingsPageStateCopyWithImpl<$Res, _$SettingsPageStateReloadApp>
    implements _$$SettingsPageStateReloadAppCopyWith<$Res> {
  __$$SettingsPageStateReloadAppCopyWithImpl(
      _$SettingsPageStateReloadApp _value,
      $Res Function(_$SettingsPageStateReloadApp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsPageStateReloadApp implements SettingsPageStateReloadApp {
  const _$SettingsPageStateReloadApp();

  @override
  String toString() {
    return 'SettingsPageState.reloadApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsPageStateReloadApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViamBoat? boat) loading,
    required TResult Function(ViamBoat? boat) loaded,
    required TResult Function() reloadApp,
    required TResult Function() showConfirmationPopup,
    required TResult Function() closeConfirmationPopup,
    required TResult Function() navigateToChangeBoatName,
  }) {
    return reloadApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViamBoat? boat)? loading,
    TResult? Function(ViamBoat? boat)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function()? showConfirmationPopup,
    TResult? Function()? closeConfirmationPopup,
    TResult? Function()? navigateToChangeBoatName,
  }) {
    return reloadApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViamBoat? boat)? loading,
    TResult Function(ViamBoat? boat)? loaded,
    TResult Function()? reloadApp,
    TResult Function()? showConfirmationPopup,
    TResult Function()? closeConfirmationPopup,
    TResult Function()? navigateToChangeBoatName,
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
    required TResult Function(SettingsPageStateLoading value) loading,
    required TResult Function(SettingsPageStateLoaded value) loaded,
    required TResult Function(SettingsPageStateReloadApp value) reloadApp,
    required TResult Function(SettingsPageStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(SettingsPageStateCloseConfirmationPopup value)
        closeConfirmationPopup,
    required TResult Function(SettingsPageStateNavigateToChangeBoatName value)
        navigateToChangeBoatName,
  }) {
    return reloadApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPageStateLoading value)? loading,
    TResult? Function(SettingsPageStateLoaded value)? loaded,
    TResult? Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult? Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult? Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
  }) {
    return reloadApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPageStateLoading value)? loading,
    TResult Function(SettingsPageStateLoaded value)? loaded,
    TResult Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (reloadApp != null) {
      return reloadApp(this);
    }
    return orElse();
  }
}

abstract class SettingsPageStateReloadApp implements SettingsPageState {
  const factory SettingsPageStateReloadApp() = _$SettingsPageStateReloadApp;
}

/// @nodoc
abstract class _$$SettingsPageStateShowConfirmationPopupCopyWith<$Res> {
  factory _$$SettingsPageStateShowConfirmationPopupCopyWith(
          _$SettingsPageStateShowConfirmationPopup value,
          $Res Function(_$SettingsPageStateShowConfirmationPopup) then) =
      __$$SettingsPageStateShowConfirmationPopupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsPageStateShowConfirmationPopupCopyWithImpl<$Res>
    extends _$SettingsPageStateCopyWithImpl<$Res,
        _$SettingsPageStateShowConfirmationPopup>
    implements _$$SettingsPageStateShowConfirmationPopupCopyWith<$Res> {
  __$$SettingsPageStateShowConfirmationPopupCopyWithImpl(
      _$SettingsPageStateShowConfirmationPopup _value,
      $Res Function(_$SettingsPageStateShowConfirmationPopup) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsPageStateShowConfirmationPopup
    implements SettingsPageStateShowConfirmationPopup {
  const _$SettingsPageStateShowConfirmationPopup();

  @override
  String toString() {
    return 'SettingsPageState.showConfirmationPopup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsPageStateShowConfirmationPopup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViamBoat? boat) loading,
    required TResult Function(ViamBoat? boat) loaded,
    required TResult Function() reloadApp,
    required TResult Function() showConfirmationPopup,
    required TResult Function() closeConfirmationPopup,
    required TResult Function() navigateToChangeBoatName,
  }) {
    return showConfirmationPopup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViamBoat? boat)? loading,
    TResult? Function(ViamBoat? boat)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function()? showConfirmationPopup,
    TResult? Function()? closeConfirmationPopup,
    TResult? Function()? navigateToChangeBoatName,
  }) {
    return showConfirmationPopup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViamBoat? boat)? loading,
    TResult Function(ViamBoat? boat)? loaded,
    TResult Function()? reloadApp,
    TResult Function()? showConfirmationPopup,
    TResult Function()? closeConfirmationPopup,
    TResult Function()? navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (showConfirmationPopup != null) {
      return showConfirmationPopup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPageStateLoading value) loading,
    required TResult Function(SettingsPageStateLoaded value) loaded,
    required TResult Function(SettingsPageStateReloadApp value) reloadApp,
    required TResult Function(SettingsPageStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(SettingsPageStateCloseConfirmationPopup value)
        closeConfirmationPopup,
    required TResult Function(SettingsPageStateNavigateToChangeBoatName value)
        navigateToChangeBoatName,
  }) {
    return showConfirmationPopup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPageStateLoading value)? loading,
    TResult? Function(SettingsPageStateLoaded value)? loaded,
    TResult? Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult? Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult? Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
  }) {
    return showConfirmationPopup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPageStateLoading value)? loading,
    TResult Function(SettingsPageStateLoaded value)? loaded,
    TResult Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (showConfirmationPopup != null) {
      return showConfirmationPopup(this);
    }
    return orElse();
  }
}

abstract class SettingsPageStateShowConfirmationPopup
    implements SettingsPageState {
  const factory SettingsPageStateShowConfirmationPopup() =
      _$SettingsPageStateShowConfirmationPopup;
}

/// @nodoc
abstract class _$$SettingsPageStateCloseConfirmationPopupCopyWith<$Res> {
  factory _$$SettingsPageStateCloseConfirmationPopupCopyWith(
          _$SettingsPageStateCloseConfirmationPopup value,
          $Res Function(_$SettingsPageStateCloseConfirmationPopup) then) =
      __$$SettingsPageStateCloseConfirmationPopupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsPageStateCloseConfirmationPopupCopyWithImpl<$Res>
    extends _$SettingsPageStateCopyWithImpl<$Res,
        _$SettingsPageStateCloseConfirmationPopup>
    implements _$$SettingsPageStateCloseConfirmationPopupCopyWith<$Res> {
  __$$SettingsPageStateCloseConfirmationPopupCopyWithImpl(
      _$SettingsPageStateCloseConfirmationPopup _value,
      $Res Function(_$SettingsPageStateCloseConfirmationPopup) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsPageStateCloseConfirmationPopup
    implements SettingsPageStateCloseConfirmationPopup {
  const _$SettingsPageStateCloseConfirmationPopup();

  @override
  String toString() {
    return 'SettingsPageState.closeConfirmationPopup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsPageStateCloseConfirmationPopup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViamBoat? boat) loading,
    required TResult Function(ViamBoat? boat) loaded,
    required TResult Function() reloadApp,
    required TResult Function() showConfirmationPopup,
    required TResult Function() closeConfirmationPopup,
    required TResult Function() navigateToChangeBoatName,
  }) {
    return closeConfirmationPopup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViamBoat? boat)? loading,
    TResult? Function(ViamBoat? boat)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function()? showConfirmationPopup,
    TResult? Function()? closeConfirmationPopup,
    TResult? Function()? navigateToChangeBoatName,
  }) {
    return closeConfirmationPopup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViamBoat? boat)? loading,
    TResult Function(ViamBoat? boat)? loaded,
    TResult Function()? reloadApp,
    TResult Function()? showConfirmationPopup,
    TResult Function()? closeConfirmationPopup,
    TResult Function()? navigateToChangeBoatName,
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
    required TResult Function(SettingsPageStateLoading value) loading,
    required TResult Function(SettingsPageStateLoaded value) loaded,
    required TResult Function(SettingsPageStateReloadApp value) reloadApp,
    required TResult Function(SettingsPageStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(SettingsPageStateCloseConfirmationPopup value)
        closeConfirmationPopup,
    required TResult Function(SettingsPageStateNavigateToChangeBoatName value)
        navigateToChangeBoatName,
  }) {
    return closeConfirmationPopup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPageStateLoading value)? loading,
    TResult? Function(SettingsPageStateLoaded value)? loaded,
    TResult? Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult? Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult? Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
  }) {
    return closeConfirmationPopup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPageStateLoading value)? loading,
    TResult Function(SettingsPageStateLoaded value)? loaded,
    TResult Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (closeConfirmationPopup != null) {
      return closeConfirmationPopup(this);
    }
    return orElse();
  }
}

abstract class SettingsPageStateCloseConfirmationPopup
    implements SettingsPageState {
  const factory SettingsPageStateCloseConfirmationPopup() =
      _$SettingsPageStateCloseConfirmationPopup;
}

/// @nodoc
abstract class _$$SettingsPageStateNavigateToChangeBoatNameCopyWith<$Res> {
  factory _$$SettingsPageStateNavigateToChangeBoatNameCopyWith(
          _$SettingsPageStateNavigateToChangeBoatName value,
          $Res Function(_$SettingsPageStateNavigateToChangeBoatName) then) =
      __$$SettingsPageStateNavigateToChangeBoatNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsPageStateNavigateToChangeBoatNameCopyWithImpl<$Res>
    extends _$SettingsPageStateCopyWithImpl<$Res,
        _$SettingsPageStateNavigateToChangeBoatName>
    implements _$$SettingsPageStateNavigateToChangeBoatNameCopyWith<$Res> {
  __$$SettingsPageStateNavigateToChangeBoatNameCopyWithImpl(
      _$SettingsPageStateNavigateToChangeBoatName _value,
      $Res Function(_$SettingsPageStateNavigateToChangeBoatName) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsPageStateNavigateToChangeBoatName
    implements SettingsPageStateNavigateToChangeBoatName {
  const _$SettingsPageStateNavigateToChangeBoatName();

  @override
  String toString() {
    return 'SettingsPageState.navigateToChangeBoatName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsPageStateNavigateToChangeBoatName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViamBoat? boat) loading,
    required TResult Function(ViamBoat? boat) loaded,
    required TResult Function() reloadApp,
    required TResult Function() showConfirmationPopup,
    required TResult Function() closeConfirmationPopup,
    required TResult Function() navigateToChangeBoatName,
  }) {
    return navigateToChangeBoatName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViamBoat? boat)? loading,
    TResult? Function(ViamBoat? boat)? loaded,
    TResult? Function()? reloadApp,
    TResult? Function()? showConfirmationPopup,
    TResult? Function()? closeConfirmationPopup,
    TResult? Function()? navigateToChangeBoatName,
  }) {
    return navigateToChangeBoatName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViamBoat? boat)? loading,
    TResult Function(ViamBoat? boat)? loaded,
    TResult Function()? reloadApp,
    TResult Function()? showConfirmationPopup,
    TResult Function()? closeConfirmationPopup,
    TResult Function()? navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (navigateToChangeBoatName != null) {
      return navigateToChangeBoatName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPageStateLoading value) loading,
    required TResult Function(SettingsPageStateLoaded value) loaded,
    required TResult Function(SettingsPageStateReloadApp value) reloadApp,
    required TResult Function(SettingsPageStateShowConfirmationPopup value)
        showConfirmationPopup,
    required TResult Function(SettingsPageStateCloseConfirmationPopup value)
        closeConfirmationPopup,
    required TResult Function(SettingsPageStateNavigateToChangeBoatName value)
        navigateToChangeBoatName,
  }) {
    return navigateToChangeBoatName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPageStateLoading value)? loading,
    TResult? Function(SettingsPageStateLoaded value)? loaded,
    TResult? Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult? Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult? Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult? Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
  }) {
    return navigateToChangeBoatName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPageStateLoading value)? loading,
    TResult Function(SettingsPageStateLoaded value)? loaded,
    TResult Function(SettingsPageStateReloadApp value)? reloadApp,
    TResult Function(SettingsPageStateShowConfirmationPopup value)?
        showConfirmationPopup,
    TResult Function(SettingsPageStateCloseConfirmationPopup value)?
        closeConfirmationPopup,
    TResult Function(SettingsPageStateNavigateToChangeBoatName value)?
        navigateToChangeBoatName,
    required TResult orElse(),
  }) {
    if (navigateToChangeBoatName != null) {
      return navigateToChangeBoatName(this);
    }
    return orElse();
  }
}

abstract class SettingsPageStateNavigateToChangeBoatName
    implements SettingsPageState {
  const factory SettingsPageStateNavigateToChangeBoatName() =
      _$SettingsPageStateNavigateToChangeBoatName;
}
