// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scan_qr_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanQrState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String name, String address, String secret)
        qrScanned,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, String address, String secret)? qrScanned,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, String address, String secret)? qrScanned,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScanQrStateIdle value) idle,
    required TResult Function(ScanQrStateQrScanned value) qrScanned,
    required TResult Function(ScanQrStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScanQrStateIdle value)? idle,
    TResult? Function(ScanQrStateQrScanned value)? qrScanned,
    TResult? Function(ScanQrStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanQrStateIdle value)? idle,
    TResult Function(ScanQrStateQrScanned value)? qrScanned,
    TResult Function(ScanQrStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanQrStateCopyWith<$Res> {
  factory $ScanQrStateCopyWith(
          ScanQrState value, $Res Function(ScanQrState) then) =
      _$ScanQrStateCopyWithImpl<$Res, ScanQrState>;
}

/// @nodoc
class _$ScanQrStateCopyWithImpl<$Res, $Val extends ScanQrState>
    implements $ScanQrStateCopyWith<$Res> {
  _$ScanQrStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScanQrStateIdleCopyWith<$Res> {
  factory _$$ScanQrStateIdleCopyWith(
          _$ScanQrStateIdle value, $Res Function(_$ScanQrStateIdle) then) =
      __$$ScanQrStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanQrStateIdleCopyWithImpl<$Res>
    extends _$ScanQrStateCopyWithImpl<$Res, _$ScanQrStateIdle>
    implements _$$ScanQrStateIdleCopyWith<$Res> {
  __$$ScanQrStateIdleCopyWithImpl(
      _$ScanQrStateIdle _value, $Res Function(_$ScanQrStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScanQrStateIdle implements ScanQrStateIdle {
  const _$ScanQrStateIdle();

  @override
  String toString() {
    return 'ScanQrState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanQrStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String name, String address, String secret)
        qrScanned,
    required TResult Function() error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, String address, String secret)? qrScanned,
    TResult? Function()? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, String address, String secret)? qrScanned,
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
    required TResult Function(ScanQrStateIdle value) idle,
    required TResult Function(ScanQrStateQrScanned value) qrScanned,
    required TResult Function(ScanQrStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScanQrStateIdle value)? idle,
    TResult? Function(ScanQrStateQrScanned value)? qrScanned,
    TResult? Function(ScanQrStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanQrStateIdle value)? idle,
    TResult Function(ScanQrStateQrScanned value)? qrScanned,
    TResult Function(ScanQrStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ScanQrStateIdle implements ScanQrState {
  const factory ScanQrStateIdle() = _$ScanQrStateIdle;
}

/// @nodoc
abstract class _$$ScanQrStateQrScannedCopyWith<$Res> {
  factory _$$ScanQrStateQrScannedCopyWith(_$ScanQrStateQrScanned value,
          $Res Function(_$ScanQrStateQrScanned) then) =
      __$$ScanQrStateQrScannedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String address, String secret});
}

/// @nodoc
class __$$ScanQrStateQrScannedCopyWithImpl<$Res>
    extends _$ScanQrStateCopyWithImpl<$Res, _$ScanQrStateQrScanned>
    implements _$$ScanQrStateQrScannedCopyWith<$Res> {
  __$$ScanQrStateQrScannedCopyWithImpl(_$ScanQrStateQrScanned _value,
      $Res Function(_$ScanQrStateQrScanned) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? secret = null,
  }) {
    return _then(_$ScanQrStateQrScanned(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScanQrStateQrScanned implements ScanQrStateQrScanned {
  const _$ScanQrStateQrScanned(
      {required this.name, required this.address, required this.secret});

  @override
  final String name;
  @override
  final String address;
  @override
  final String secret;

  @override
  String toString() {
    return 'ScanQrState.qrScanned(name: $name, address: $address, secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanQrStateQrScanned &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanQrStateQrScannedCopyWith<_$ScanQrStateQrScanned> get copyWith =>
      __$$ScanQrStateQrScannedCopyWithImpl<_$ScanQrStateQrScanned>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String name, String address, String secret)
        qrScanned,
    required TResult Function() error,
  }) {
    return qrScanned(name, address, secret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, String address, String secret)? qrScanned,
    TResult? Function()? error,
  }) {
    return qrScanned?.call(name, address, secret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, String address, String secret)? qrScanned,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (qrScanned != null) {
      return qrScanned(name, address, secret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScanQrStateIdle value) idle,
    required TResult Function(ScanQrStateQrScanned value) qrScanned,
    required TResult Function(ScanQrStateError value) error,
  }) {
    return qrScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScanQrStateIdle value)? idle,
    TResult? Function(ScanQrStateQrScanned value)? qrScanned,
    TResult? Function(ScanQrStateError value)? error,
  }) {
    return qrScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanQrStateIdle value)? idle,
    TResult Function(ScanQrStateQrScanned value)? qrScanned,
    TResult Function(ScanQrStateError value)? error,
    required TResult orElse(),
  }) {
    if (qrScanned != null) {
      return qrScanned(this);
    }
    return orElse();
  }
}

abstract class ScanQrStateQrScanned implements ScanQrState {
  const factory ScanQrStateQrScanned(
      {required final String name,
      required final String address,
      required final String secret}) = _$ScanQrStateQrScanned;

  String get name;
  String get address;
  String get secret;
  @JsonKey(ignore: true)
  _$$ScanQrStateQrScannedCopyWith<_$ScanQrStateQrScanned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanQrStateErrorCopyWith<$Res> {
  factory _$$ScanQrStateErrorCopyWith(
          _$ScanQrStateError value, $Res Function(_$ScanQrStateError) then) =
      __$$ScanQrStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanQrStateErrorCopyWithImpl<$Res>
    extends _$ScanQrStateCopyWithImpl<$Res, _$ScanQrStateError>
    implements _$$ScanQrStateErrorCopyWith<$Res> {
  __$$ScanQrStateErrorCopyWithImpl(
      _$ScanQrStateError _value, $Res Function(_$ScanQrStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScanQrStateError implements ScanQrStateError {
  const _$ScanQrStateError();

  @override
  String toString() {
    return 'ScanQrState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanQrStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String name, String address, String secret)
        qrScanned,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String name, String address, String secret)? qrScanned,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String name, String address, String secret)? qrScanned,
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
    required TResult Function(ScanQrStateIdle value) idle,
    required TResult Function(ScanQrStateQrScanned value) qrScanned,
    required TResult Function(ScanQrStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScanQrStateIdle value)? idle,
    TResult? Function(ScanQrStateQrScanned value)? qrScanned,
    TResult? Function(ScanQrStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScanQrStateIdle value)? idle,
    TResult Function(ScanQrStateQrScanned value)? qrScanned,
    TResult Function(ScanQrStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ScanQrStateError implements ScanQrState {
  const factory ScanQrStateError() = _$ScanQrStateError;
}
