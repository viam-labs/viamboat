// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FiltersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(WaterFilter filter, FiltersType type) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(WaterFilter filter, FiltersType type)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(WaterFilter filter, FiltersType type)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FiltersStateIdle value) idle,
    required TResult Function(FiltersStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FiltersStateIdle value)? idle,
    TResult? Function(FiltersStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FiltersStateIdle value)? idle,
    TResult Function(FiltersStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersStateCopyWith<$Res> {
  factory $FiltersStateCopyWith(
          FiltersState value, $Res Function(FiltersState) then) =
      _$FiltersStateCopyWithImpl<$Res, FiltersState>;
}

/// @nodoc
class _$FiltersStateCopyWithImpl<$Res, $Val extends FiltersState>
    implements $FiltersStateCopyWith<$Res> {
  _$FiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FiltersStateIdleCopyWith<$Res> {
  factory _$$FiltersStateIdleCopyWith(
          _$FiltersStateIdle value, $Res Function(_$FiltersStateIdle) then) =
      __$$FiltersStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FiltersStateIdleCopyWithImpl<$Res>
    extends _$FiltersStateCopyWithImpl<$Res, _$FiltersStateIdle>
    implements _$$FiltersStateIdleCopyWith<$Res> {
  __$$FiltersStateIdleCopyWithImpl(
      _$FiltersStateIdle _value, $Res Function(_$FiltersStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FiltersStateIdle implements FiltersStateIdle {
  const _$FiltersStateIdle();

  @override
  String toString() {
    return 'FiltersState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FiltersStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(WaterFilter filter, FiltersType type) loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(WaterFilter filter, FiltersType type)? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(WaterFilter filter, FiltersType type)? loaded,
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
    required TResult Function(FiltersStateIdle value) idle,
    required TResult Function(FiltersStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FiltersStateIdle value)? idle,
    TResult? Function(FiltersStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FiltersStateIdle value)? idle,
    TResult Function(FiltersStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class FiltersStateIdle implements FiltersState {
  const factory FiltersStateIdle() = _$FiltersStateIdle;
}

/// @nodoc
abstract class _$$FiltersStateLoadedCopyWith<$Res> {
  factory _$$FiltersStateLoadedCopyWith(_$FiltersStateLoaded value,
          $Res Function(_$FiltersStateLoaded) then) =
      __$$FiltersStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({WaterFilter filter, FiltersType type});
}

/// @nodoc
class __$$FiltersStateLoadedCopyWithImpl<$Res>
    extends _$FiltersStateCopyWithImpl<$Res, _$FiltersStateLoaded>
    implements _$$FiltersStateLoadedCopyWith<$Res> {
  __$$FiltersStateLoadedCopyWithImpl(
      _$FiltersStateLoaded _value, $Res Function(_$FiltersStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? type = null,
  }) {
    return _then(_$FiltersStateLoaded(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as WaterFilter,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FiltersType,
    ));
  }
}

/// @nodoc

class _$FiltersStateLoaded implements FiltersStateLoaded {
  const _$FiltersStateLoaded(this.filter, this.type);

  @override
  final WaterFilter filter;
  @override
  final FiltersType type;

  @override
  String toString() {
    return 'FiltersState.loaded(filter: $filter, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FiltersStateLoaded &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FiltersStateLoadedCopyWith<_$FiltersStateLoaded> get copyWith =>
      __$$FiltersStateLoadedCopyWithImpl<_$FiltersStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(WaterFilter filter, FiltersType type) loaded,
  }) {
    return loaded(filter, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(WaterFilter filter, FiltersType type)? loaded,
  }) {
    return loaded?.call(filter, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(WaterFilter filter, FiltersType type)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(filter, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FiltersStateIdle value) idle,
    required TResult Function(FiltersStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FiltersStateIdle value)? idle,
    TResult? Function(FiltersStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FiltersStateIdle value)? idle,
    TResult Function(FiltersStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FiltersStateLoaded implements FiltersState {
  const factory FiltersStateLoaded(
      final WaterFilter filter, final FiltersType type) = _$FiltersStateLoaded;

  WaterFilter get filter;
  FiltersType get type;
  @JsonKey(ignore: true)
  _$$FiltersStateLoadedCopyWith<_$FiltersStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
