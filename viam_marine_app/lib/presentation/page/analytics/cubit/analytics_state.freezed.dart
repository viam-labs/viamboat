// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'analytics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalyticsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<AnalyticsType> analyticsTypes) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<AnalyticsType> analyticsTypes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<AnalyticsType> analyticsTypes)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalyticsStateIdle value) idle,
    required TResult Function(AnalyticsStateLoading value) loading,
    required TResult Function(AnalyticsStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalyticsStateIdle value)? idle,
    TResult? Function(AnalyticsStateLoading value)? loading,
    TResult? Function(AnalyticsStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalyticsStateIdle value)? idle,
    TResult Function(AnalyticsStateLoading value)? loading,
    TResult Function(AnalyticsStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsStateCopyWith<$Res> {
  factory $AnalyticsStateCopyWith(
          AnalyticsState value, $Res Function(AnalyticsState) then) =
      _$AnalyticsStateCopyWithImpl<$Res, AnalyticsState>;
}

/// @nodoc
class _$AnalyticsStateCopyWithImpl<$Res, $Val extends AnalyticsState>
    implements $AnalyticsStateCopyWith<$Res> {
  _$AnalyticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AnalyticsStateIdleCopyWith<$Res> {
  factory _$$AnalyticsStateIdleCopyWith(_$AnalyticsStateIdle value,
          $Res Function(_$AnalyticsStateIdle) then) =
      __$$AnalyticsStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnalyticsStateIdleCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$AnalyticsStateIdle>
    implements _$$AnalyticsStateIdleCopyWith<$Res> {
  __$$AnalyticsStateIdleCopyWithImpl(
      _$AnalyticsStateIdle _value, $Res Function(_$AnalyticsStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnalyticsStateIdle implements AnalyticsStateIdle {
  const _$AnalyticsStateIdle();

  @override
  String toString() {
    return 'AnalyticsState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnalyticsStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<AnalyticsType> analyticsTypes) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<AnalyticsType> analyticsTypes)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<AnalyticsType> analyticsTypes)? loaded,
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
    required TResult Function(AnalyticsStateIdle value) idle,
    required TResult Function(AnalyticsStateLoading value) loading,
    required TResult Function(AnalyticsStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalyticsStateIdle value)? idle,
    TResult? Function(AnalyticsStateLoading value)? loading,
    TResult? Function(AnalyticsStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalyticsStateIdle value)? idle,
    TResult Function(AnalyticsStateLoading value)? loading,
    TResult Function(AnalyticsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AnalyticsStateIdle implements AnalyticsState {
  const factory AnalyticsStateIdle() = _$AnalyticsStateIdle;
}

/// @nodoc
abstract class _$$AnalyticsStateLoadingCopyWith<$Res> {
  factory _$$AnalyticsStateLoadingCopyWith(_$AnalyticsStateLoading value,
          $Res Function(_$AnalyticsStateLoading) then) =
      __$$AnalyticsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnalyticsStateLoadingCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$AnalyticsStateLoading>
    implements _$$AnalyticsStateLoadingCopyWith<$Res> {
  __$$AnalyticsStateLoadingCopyWithImpl(_$AnalyticsStateLoading _value,
      $Res Function(_$AnalyticsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnalyticsStateLoading implements AnalyticsStateLoading {
  const _$AnalyticsStateLoading();

  @override
  String toString() {
    return 'AnalyticsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnalyticsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<AnalyticsType> analyticsTypes) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<AnalyticsType> analyticsTypes)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<AnalyticsType> analyticsTypes)? loaded,
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
    required TResult Function(AnalyticsStateIdle value) idle,
    required TResult Function(AnalyticsStateLoading value) loading,
    required TResult Function(AnalyticsStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalyticsStateIdle value)? idle,
    TResult? Function(AnalyticsStateLoading value)? loading,
    TResult? Function(AnalyticsStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalyticsStateIdle value)? idle,
    TResult Function(AnalyticsStateLoading value)? loading,
    TResult Function(AnalyticsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AnalyticsStateLoading implements AnalyticsState {
  const factory AnalyticsStateLoading() = _$AnalyticsStateLoading;
}

/// @nodoc
abstract class _$$AnalyticsStateLoadedCopyWith<$Res> {
  factory _$$AnalyticsStateLoadedCopyWith(_$AnalyticsStateLoaded value,
          $Res Function(_$AnalyticsStateLoaded) then) =
      __$$AnalyticsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AnalyticsType> analyticsTypes});
}

/// @nodoc
class __$$AnalyticsStateLoadedCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$AnalyticsStateLoaded>
    implements _$$AnalyticsStateLoadedCopyWith<$Res> {
  __$$AnalyticsStateLoadedCopyWithImpl(_$AnalyticsStateLoaded _value,
      $Res Function(_$AnalyticsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analyticsTypes = null,
  }) {
    return _then(_$AnalyticsStateLoaded(
      null == analyticsTypes
          ? _value._analyticsTypes
          : analyticsTypes // ignore: cast_nullable_to_non_nullable
              as List<AnalyticsType>,
    ));
  }
}

/// @nodoc

class _$AnalyticsStateLoaded implements AnalyticsStateLoaded {
  const _$AnalyticsStateLoaded(final List<AnalyticsType> analyticsTypes)
      : _analyticsTypes = analyticsTypes;

  final List<AnalyticsType> _analyticsTypes;
  @override
  List<AnalyticsType> get analyticsTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analyticsTypes);
  }

  @override
  String toString() {
    return 'AnalyticsState.loaded(analyticsTypes: $analyticsTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._analyticsTypes, _analyticsTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_analyticsTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsStateLoadedCopyWith<_$AnalyticsStateLoaded> get copyWith =>
      __$$AnalyticsStateLoadedCopyWithImpl<_$AnalyticsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<AnalyticsType> analyticsTypes) loaded,
  }) {
    return loaded(analyticsTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<AnalyticsType> analyticsTypes)? loaded,
  }) {
    return loaded?.call(analyticsTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<AnalyticsType> analyticsTypes)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(analyticsTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalyticsStateIdle value) idle,
    required TResult Function(AnalyticsStateLoading value) loading,
    required TResult Function(AnalyticsStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalyticsStateIdle value)? idle,
    TResult? Function(AnalyticsStateLoading value)? loading,
    TResult? Function(AnalyticsStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalyticsStateIdle value)? idle,
    TResult Function(AnalyticsStateLoading value)? loading,
    TResult Function(AnalyticsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AnalyticsStateLoaded implements AnalyticsState {
  const factory AnalyticsStateLoaded(final List<AnalyticsType> analyticsTypes) =
      _$AnalyticsStateLoaded;

  List<AnalyticsType> get analyticsTypes;
  @JsonKey(ignore: true)
  _$$AnalyticsStateLoadedCopyWith<_$AnalyticsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
