// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUploading,
    required TResult Function(T data) signUpsuccess,
    required TResult Function(String error) signUpfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUploading,
    TResult? Function(T data)? signUpsuccess,
    TResult? Function(String error)? signUpfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUploading,
    TResult Function(T data)? signUpsuccess,
    TResult Function(String error)? signUpfailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUploading,
    required TResult Function(SignUpSuccess<T> value) signUpsuccess,
    required TResult Function(SignUpError<T> value) signUpfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUploading,
    TResult? Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult? Function(SignUpError<T> value)? signUpfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUploading,
    TResult Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult Function(SignUpError<T> value)? signUpfailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<T, $Res> {
  factory $SignUpStateCopyWith(
          SignUpState<T> value, $Res Function(SignUpState<T>) then) =
      _$SignUpStateCopyWithImpl<T, $Res, SignUpState<T>>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<T, $Res, $Val extends SignUpState<T>>
    implements $SignUpStateCopyWith<T, $Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

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
    extends _$SignUpStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'SignUpState<$T>.initial()';
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
    required TResult Function() signUploading,
    required TResult Function(T data) signUpsuccess,
    required TResult Function(String error) signUpfailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUploading,
    TResult? Function(T data)? signUpsuccess,
    TResult? Function(String error)? signUpfailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUploading,
    TResult Function(T data)? signUpsuccess,
    TResult Function(String error)? signUpfailure,
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
    required TResult Function(SignUpLoading<T> value) signUploading,
    required TResult Function(SignUpSuccess<T> value) signUpsuccess,
    required TResult Function(SignUpError<T> value) signUpfailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUploading,
    TResult? Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult? Function(SignUpError<T> value)? signUpfailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUploading,
    TResult Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult Function(SignUpError<T> value)? signUpfailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignUpState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SignUpLoadingImplCopyWith<T, $Res> {
  factory _$$SignUpLoadingImplCopyWith(_$SignUpLoadingImpl<T> value,
          $Res Function(_$SignUpLoadingImpl<T>) then) =
      __$$SignUpLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignUpLoadingImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpLoadingImpl<T>>
    implements _$$SignUpLoadingImplCopyWith<T, $Res> {
  __$$SignUpLoadingImplCopyWithImpl(_$SignUpLoadingImpl<T> _value,
      $Res Function(_$SignUpLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpLoadingImpl<T> implements SignUpLoading<T> {
  const _$SignUpLoadingImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.signUploading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUploading,
    required TResult Function(T data) signUpsuccess,
    required TResult Function(String error) signUpfailure,
  }) {
    return signUploading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUploading,
    TResult? Function(T data)? signUpsuccess,
    TResult? Function(String error)? signUpfailure,
  }) {
    return signUploading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUploading,
    TResult Function(T data)? signUpsuccess,
    TResult Function(String error)? signUpfailure,
    required TResult orElse(),
  }) {
    if (signUploading != null) {
      return signUploading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUploading,
    required TResult Function(SignUpSuccess<T> value) signUpsuccess,
    required TResult Function(SignUpError<T> value) signUpfailure,
  }) {
    return signUploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUploading,
    TResult? Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult? Function(SignUpError<T> value)? signUpfailure,
  }) {
    return signUploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUploading,
    TResult Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult Function(SignUpError<T> value)? signUpfailure,
    required TResult orElse(),
  }) {
    if (signUploading != null) {
      return signUploading(this);
    }
    return orElse();
  }
}

abstract class SignUpLoading<T> implements SignUpState<T> {
  const factory SignUpLoading() = _$SignUpLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignUpSuccessImplCopyWith<T, $Res> {
  factory _$$SignUpSuccessImplCopyWith(_$SignUpSuccessImpl<T> value,
          $Res Function(_$SignUpSuccessImpl<T>) then) =
      __$$SignUpSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SignUpSuccessImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpSuccessImpl<T>>
    implements _$$SignUpSuccessImplCopyWith<T, $Res> {
  __$$SignUpSuccessImplCopyWithImpl(_$SignUpSuccessImpl<T> _value,
      $Res Function(_$SignUpSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SignUpSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SignUpSuccessImpl<T> implements SignUpSuccess<T> {
  const _$SignUpSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignUpState<$T>.signUpsuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      __$$SignUpSuccessImplCopyWithImpl<T, _$SignUpSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUploading,
    required TResult Function(T data) signUpsuccess,
    required TResult Function(String error) signUpfailure,
  }) {
    return signUpsuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUploading,
    TResult? Function(T data)? signUpsuccess,
    TResult? Function(String error)? signUpfailure,
  }) {
    return signUpsuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUploading,
    TResult Function(T data)? signUpsuccess,
    TResult Function(String error)? signUpfailure,
    required TResult orElse(),
  }) {
    if (signUpsuccess != null) {
      return signUpsuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUploading,
    required TResult Function(SignUpSuccess<T> value) signUpsuccess,
    required TResult Function(SignUpError<T> value) signUpfailure,
  }) {
    return signUpsuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUploading,
    TResult? Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult? Function(SignUpError<T> value)? signUpfailure,
  }) {
    return signUpsuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUploading,
    TResult Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult Function(SignUpError<T> value)? signUpfailure,
    required TResult orElse(),
  }) {
    if (signUpsuccess != null) {
      return signUpsuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccess<T> implements SignUpState<T> {
  const factory SignUpSuccess(final T data) = _$SignUpSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpErrorImplCopyWith<T, $Res> {
  factory _$$SignUpErrorImplCopyWith(_$SignUpErrorImpl<T> value,
          $Res Function(_$SignUpErrorImpl<T>) then) =
      __$$SignUpErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SignUpErrorImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpErrorImpl<T>>
    implements _$$SignUpErrorImplCopyWith<T, $Res> {
  __$$SignUpErrorImplCopyWithImpl(
      _$SignUpErrorImpl<T> _value, $Res Function(_$SignUpErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SignUpErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpErrorImpl<T> implements SignUpError<T> {
  const _$SignUpErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SignUpState<$T>.signUpfailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpErrorImplCopyWith<T, _$SignUpErrorImpl<T>> get copyWith =>
      __$$SignUpErrorImplCopyWithImpl<T, _$SignUpErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUploading,
    required TResult Function(T data) signUpsuccess,
    required TResult Function(String error) signUpfailure,
  }) {
    return signUpfailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUploading,
    TResult? Function(T data)? signUpsuccess,
    TResult? Function(String error)? signUpfailure,
  }) {
    return signUpfailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUploading,
    TResult Function(T data)? signUpsuccess,
    TResult Function(String error)? signUpfailure,
    required TResult orElse(),
  }) {
    if (signUpfailure != null) {
      return signUpfailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) signUploading,
    required TResult Function(SignUpSuccess<T> value) signUpsuccess,
    required TResult Function(SignUpError<T> value) signUpfailure,
  }) {
    return signUpfailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? signUploading,
    TResult? Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult? Function(SignUpError<T> value)? signUpfailure,
  }) {
    return signUpfailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? signUploading,
    TResult Function(SignUpSuccess<T> value)? signUpsuccess,
    TResult Function(SignUpError<T> value)? signUpfailure,
    required TResult orElse(),
  }) {
    if (signUpfailure != null) {
      return signUpfailure(this);
    }
    return orElse();
  }
}

abstract class SignUpError<T> implements SignUpState<T> {
  const factory SignUpError({required final String error}) =
      _$SignUpErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$SignUpErrorImplCopyWith<T, _$SignUpErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
