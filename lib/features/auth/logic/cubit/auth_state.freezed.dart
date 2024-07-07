// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(T data) successLogin,
    required TResult Function(T data) successSignOut,
    required TResult Function(T data) successRegister,
    required TResult Function(T data) successResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(T data)? successLogin,
    TResult? Function(T data)? successSignOut,
    TResult? Function(T data)? successRegister,
    TResult? Function(T data)? successResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(T data)? successLogin,
    TResult Function(T data)? successSignOut,
    TResult Function(T data)? successRegister,
    TResult Function(T data)? successResetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
    required TResult Function(SuccessLogin<T> value) successLogin,
    required TResult Function(SuccessSignOut<T> value) successSignOut,
    required TResult Function(SuccessRegister<T> value) successRegister,
    required TResult Function(SuccessResetPassword<T> value)
        successResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SuccessLogin<T> value)? successLogin,
    TResult? Function(SuccessSignOut<T> value)? successSignOut,
    TResult? Function(SuccessRegister<T> value)? successRegister,
    TResult? Function(SuccessResetPassword<T> value)? successResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    TResult Function(SuccessLogin<T> value)? successLogin,
    TResult Function(SuccessSignOut<T> value)? successSignOut,
    TResult Function(SuccessRegister<T> value)? successRegister,
    TResult Function(SuccessResetPassword<T> value)? successResetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<T, $Res> {
  factory $AuthStateCopyWith(
          AuthState<T> value, $Res Function(AuthState<T>) then) =
      _$AuthStateCopyWithImpl<T, $Res, AuthState<T>>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<T, $Res, $Val extends AuthState<T>>
    implements $AuthStateCopyWith<T, $Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(T data) successLogin,
    required TResult Function(T data) successSignOut,
    required TResult Function(T data) successRegister,
    required TResult Function(T data) successResetPassword,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(T data)? successLogin,
    TResult? Function(T data)? successSignOut,
    TResult? Function(T data)? successRegister,
    TResult? Function(T data)? successResetPassword,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(T data)? successLogin,
    TResult Function(T data)? successSignOut,
    TResult Function(T data)? successRegister,
    TResult Function(T data)? successResetPassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
    required TResult Function(SuccessLogin<T> value) successLogin,
    required TResult Function(SuccessSignOut<T> value) successSignOut,
    required TResult Function(SuccessRegister<T> value) successRegister,
    required TResult Function(SuccessResetPassword<T> value)
        successResetPassword,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SuccessLogin<T> value)? successLogin,
    TResult? Function(SuccessSignOut<T> value)? successSignOut,
    TResult? Function(SuccessRegister<T> value)? successRegister,
    TResult? Function(SuccessResetPassword<T> value)? successResetPassword,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    TResult Function(SuccessLogin<T> value)? successLogin,
    TResult Function(SuccessSignOut<T> value)? successSignOut,
    TResult Function(SuccessRegister<T> value)? successRegister,
    TResult Function(SuccessResetPassword<T> value)? successResetPassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AuthState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(T data) successLogin,
    required TResult Function(T data) successSignOut,
    required TResult Function(T data) successRegister,
    required TResult Function(T data) successResetPassword,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(T data)? successLogin,
    TResult? Function(T data)? successSignOut,
    TResult? Function(T data)? successRegister,
    TResult? Function(T data)? successResetPassword,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(T data)? successLogin,
    TResult Function(T data)? successSignOut,
    TResult Function(T data)? successRegister,
    TResult Function(T data)? successResetPassword,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
    required TResult Function(SuccessLogin<T> value) successLogin,
    required TResult Function(SuccessSignOut<T> value) successSignOut,
    required TResult Function(SuccessRegister<T> value) successRegister,
    required TResult Function(SuccessResetPassword<T> value)
        successResetPassword,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SuccessLogin<T> value)? successLogin,
    TResult? Function(SuccessSignOut<T> value)? successSignOut,
    TResult? Function(SuccessRegister<T> value)? successRegister,
    TResult? Function(SuccessResetPassword<T> value)? successResetPassword,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    TResult Function(SuccessLogin<T> value)? successLogin,
    TResult Function(SuccessSignOut<T> value)? successSignOut,
    TResult Function(SuccessRegister<T> value)? successRegister,
    TResult Function(SuccessResetPassword<T> value)? successResetPassword,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements AuthState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(T data) successLogin,
    required TResult Function(T data) successSignOut,
    required TResult Function(T data) successRegister,
    required TResult Function(T data) successResetPassword,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(T data)? successLogin,
    TResult? Function(T data)? successSignOut,
    TResult? Function(T data)? successRegister,
    TResult? Function(T data)? successResetPassword,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(T data)? successLogin,
    TResult Function(T data)? successSignOut,
    TResult Function(T data)? successRegister,
    TResult Function(T data)? successResetPassword,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
    required TResult Function(SuccessLogin<T> value) successLogin,
    required TResult Function(SuccessSignOut<T> value) successSignOut,
    required TResult Function(SuccessRegister<T> value) successRegister,
    required TResult Function(SuccessResetPassword<T> value)
        successResetPassword,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SuccessLogin<T> value)? successLogin,
    TResult? Function(SuccessSignOut<T> value)? successSignOut,
    TResult? Function(SuccessRegister<T> value)? successRegister,
    TResult? Function(SuccessResetPassword<T> value)? successResetPassword,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    TResult Function(SuccessLogin<T> value)? successLogin,
    TResult Function(SuccessSignOut<T> value)? successSignOut,
    TResult Function(SuccessRegister<T> value)? successRegister,
    TResult Function(SuccessResetPassword<T> value)? successResetPassword,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements AuthState<T> {
  const factory Error(final String message) = _$ErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessLoginImplCopyWith<T, $Res> {
  factory _$$SuccessLoginImplCopyWith(_$SuccessLoginImpl<T> value,
          $Res Function(_$SuccessLoginImpl<T>) then) =
      __$$SuccessLoginImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessLoginImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$SuccessLoginImpl<T>>
    implements _$$SuccessLoginImplCopyWith<T, $Res> {
  __$$SuccessLoginImplCopyWithImpl(
      _$SuccessLoginImpl<T> _value, $Res Function(_$SuccessLoginImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessLoginImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessLoginImpl<T> implements SuccessLogin<T> {
  const _$SuccessLoginImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.successLogin(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLoginImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginImplCopyWith<T, _$SuccessLoginImpl<T>> get copyWith =>
      __$$SuccessLoginImplCopyWithImpl<T, _$SuccessLoginImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(T data) successLogin,
    required TResult Function(T data) successSignOut,
    required TResult Function(T data) successRegister,
    required TResult Function(T data) successResetPassword,
  }) {
    return successLogin(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(T data)? successLogin,
    TResult? Function(T data)? successSignOut,
    TResult? Function(T data)? successRegister,
    TResult? Function(T data)? successResetPassword,
  }) {
    return successLogin?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(T data)? successLogin,
    TResult Function(T data)? successSignOut,
    TResult Function(T data)? successRegister,
    TResult Function(T data)? successResetPassword,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
    required TResult Function(SuccessLogin<T> value) successLogin,
    required TResult Function(SuccessSignOut<T> value) successSignOut,
    required TResult Function(SuccessRegister<T> value) successRegister,
    required TResult Function(SuccessResetPassword<T> value)
        successResetPassword,
  }) {
    return successLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SuccessLogin<T> value)? successLogin,
    TResult? Function(SuccessSignOut<T> value)? successSignOut,
    TResult? Function(SuccessRegister<T> value)? successRegister,
    TResult? Function(SuccessResetPassword<T> value)? successResetPassword,
  }) {
    return successLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    TResult Function(SuccessLogin<T> value)? successLogin,
    TResult Function(SuccessSignOut<T> value)? successSignOut,
    TResult Function(SuccessRegister<T> value)? successRegister,
    TResult Function(SuccessResetPassword<T> value)? successResetPassword,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(this);
    }
    return orElse();
  }
}

abstract class SuccessLogin<T> implements AuthState<T> {
  const factory SuccessLogin(final T data) = _$SuccessLoginImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessLoginImplCopyWith<T, _$SuccessLoginImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSignOutImplCopyWith<T, $Res> {
  factory _$$SuccessSignOutImplCopyWith(_$SuccessSignOutImpl<T> value,
          $Res Function(_$SuccessSignOutImpl<T>) then) =
      __$$SuccessSignOutImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessSignOutImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$SuccessSignOutImpl<T>>
    implements _$$SuccessSignOutImplCopyWith<T, $Res> {
  __$$SuccessSignOutImplCopyWithImpl(_$SuccessSignOutImpl<T> _value,
      $Res Function(_$SuccessSignOutImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessSignOutImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessSignOutImpl<T> implements SuccessSignOut<T> {
  const _$SuccessSignOutImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.successSignOut(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignOutImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignOutImplCopyWith<T, _$SuccessSignOutImpl<T>> get copyWith =>
      __$$SuccessSignOutImplCopyWithImpl<T, _$SuccessSignOutImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(T data) successLogin,
    required TResult Function(T data) successSignOut,
    required TResult Function(T data) successRegister,
    required TResult Function(T data) successResetPassword,
  }) {
    return successSignOut(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(T data)? successLogin,
    TResult? Function(T data)? successSignOut,
    TResult? Function(T data)? successRegister,
    TResult? Function(T data)? successResetPassword,
  }) {
    return successSignOut?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(T data)? successLogin,
    TResult Function(T data)? successSignOut,
    TResult Function(T data)? successRegister,
    TResult Function(T data)? successResetPassword,
    required TResult orElse(),
  }) {
    if (successSignOut != null) {
      return successSignOut(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
    required TResult Function(SuccessLogin<T> value) successLogin,
    required TResult Function(SuccessSignOut<T> value) successSignOut,
    required TResult Function(SuccessRegister<T> value) successRegister,
    required TResult Function(SuccessResetPassword<T> value)
        successResetPassword,
  }) {
    return successSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SuccessLogin<T> value)? successLogin,
    TResult? Function(SuccessSignOut<T> value)? successSignOut,
    TResult? Function(SuccessRegister<T> value)? successRegister,
    TResult? Function(SuccessResetPassword<T> value)? successResetPassword,
  }) {
    return successSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    TResult Function(SuccessLogin<T> value)? successLogin,
    TResult Function(SuccessSignOut<T> value)? successSignOut,
    TResult Function(SuccessRegister<T> value)? successRegister,
    TResult Function(SuccessResetPassword<T> value)? successResetPassword,
    required TResult orElse(),
  }) {
    if (successSignOut != null) {
      return successSignOut(this);
    }
    return orElse();
  }
}

abstract class SuccessSignOut<T> implements AuthState<T> {
  const factory SuccessSignOut(final T data) = _$SuccessSignOutImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessSignOutImplCopyWith<T, _$SuccessSignOutImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessRegisterImplCopyWith<T, $Res> {
  factory _$$SuccessRegisterImplCopyWith(_$SuccessRegisterImpl<T> value,
          $Res Function(_$SuccessRegisterImpl<T>) then) =
      __$$SuccessRegisterImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessRegisterImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$SuccessRegisterImpl<T>>
    implements _$$SuccessRegisterImplCopyWith<T, $Res> {
  __$$SuccessRegisterImplCopyWithImpl(_$SuccessRegisterImpl<T> _value,
      $Res Function(_$SuccessRegisterImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessRegisterImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessRegisterImpl<T> implements SuccessRegister<T> {
  const _$SuccessRegisterImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.successRegister(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessRegisterImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessRegisterImplCopyWith<T, _$SuccessRegisterImpl<T>> get copyWith =>
      __$$SuccessRegisterImplCopyWithImpl<T, _$SuccessRegisterImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(T data) successLogin,
    required TResult Function(T data) successSignOut,
    required TResult Function(T data) successRegister,
    required TResult Function(T data) successResetPassword,
  }) {
    return successRegister(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(T data)? successLogin,
    TResult? Function(T data)? successSignOut,
    TResult? Function(T data)? successRegister,
    TResult? Function(T data)? successResetPassword,
  }) {
    return successRegister?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(T data)? successLogin,
    TResult Function(T data)? successSignOut,
    TResult Function(T data)? successRegister,
    TResult Function(T data)? successResetPassword,
    required TResult orElse(),
  }) {
    if (successRegister != null) {
      return successRegister(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
    required TResult Function(SuccessLogin<T> value) successLogin,
    required TResult Function(SuccessSignOut<T> value) successSignOut,
    required TResult Function(SuccessRegister<T> value) successRegister,
    required TResult Function(SuccessResetPassword<T> value)
        successResetPassword,
  }) {
    return successRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SuccessLogin<T> value)? successLogin,
    TResult? Function(SuccessSignOut<T> value)? successSignOut,
    TResult? Function(SuccessRegister<T> value)? successRegister,
    TResult? Function(SuccessResetPassword<T> value)? successResetPassword,
  }) {
    return successRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    TResult Function(SuccessLogin<T> value)? successLogin,
    TResult Function(SuccessSignOut<T> value)? successSignOut,
    TResult Function(SuccessRegister<T> value)? successRegister,
    TResult Function(SuccessResetPassword<T> value)? successResetPassword,
    required TResult orElse(),
  }) {
    if (successRegister != null) {
      return successRegister(this);
    }
    return orElse();
  }
}

abstract class SuccessRegister<T> implements AuthState<T> {
  const factory SuccessRegister(final T data) = _$SuccessRegisterImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessRegisterImplCopyWith<T, _$SuccessRegisterImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessResetPasswordImplCopyWith<T, $Res> {
  factory _$$SuccessResetPasswordImplCopyWith(
          _$SuccessResetPasswordImpl<T> value,
          $Res Function(_$SuccessResetPasswordImpl<T>) then) =
      __$$SuccessResetPasswordImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessResetPasswordImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$SuccessResetPasswordImpl<T>>
    implements _$$SuccessResetPasswordImplCopyWith<T, $Res> {
  __$$SuccessResetPasswordImplCopyWithImpl(_$SuccessResetPasswordImpl<T> _value,
      $Res Function(_$SuccessResetPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessResetPasswordImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessResetPasswordImpl<T> implements SuccessResetPassword<T> {
  const _$SuccessResetPasswordImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.successResetPassword(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResetPasswordImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResetPasswordImplCopyWith<T, _$SuccessResetPasswordImpl<T>>
      get copyWith => __$$SuccessResetPasswordImplCopyWithImpl<T,
          _$SuccessResetPasswordImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(T data) successLogin,
    required TResult Function(T data) successSignOut,
    required TResult Function(T data) successRegister,
    required TResult Function(T data) successResetPassword,
  }) {
    return successResetPassword(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(T data)? successLogin,
    TResult? Function(T data)? successSignOut,
    TResult? Function(T data)? successRegister,
    TResult? Function(T data)? successResetPassword,
  }) {
    return successResetPassword?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(T data)? successLogin,
    TResult Function(T data)? successSignOut,
    TResult Function(T data)? successRegister,
    TResult Function(T data)? successResetPassword,
    required TResult orElse(),
  }) {
    if (successResetPassword != null) {
      return successResetPassword(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
    required TResult Function(SuccessLogin<T> value) successLogin,
    required TResult Function(SuccessSignOut<T> value) successSignOut,
    required TResult Function(SuccessRegister<T> value) successRegister,
    required TResult Function(SuccessResetPassword<T> value)
        successResetPassword,
  }) {
    return successResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
    TResult? Function(SuccessLogin<T> value)? successLogin,
    TResult? Function(SuccessSignOut<T> value)? successSignOut,
    TResult? Function(SuccessRegister<T> value)? successRegister,
    TResult? Function(SuccessResetPassword<T> value)? successResetPassword,
  }) {
    return successResetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    TResult Function(SuccessLogin<T> value)? successLogin,
    TResult Function(SuccessSignOut<T> value)? successSignOut,
    TResult Function(SuccessRegister<T> value)? successRegister,
    TResult Function(SuccessResetPassword<T> value)? successResetPassword,
    required TResult orElse(),
  }) {
    if (successResetPassword != null) {
      return successResetPassword(this);
    }
    return orElse();
  }
}

abstract class SuccessResetPassword<T> implements AuthState<T> {
  const factory SuccessResetPassword(final T data) =
      _$SuccessResetPasswordImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessResetPasswordImplCopyWith<T, _$SuccessResetPasswordImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
