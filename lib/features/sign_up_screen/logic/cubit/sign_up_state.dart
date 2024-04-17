import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T>{
  const factory SignUpState.initial() = _Initial;

  const factory SignUpState.signUploading() = SignUpLoading;
  const factory SignUpState.signUpsuccess(T data) = SignUpSuccess<T>;
  const factory SignUpState.signUpfailure({required String error}) = SignUpError;
}