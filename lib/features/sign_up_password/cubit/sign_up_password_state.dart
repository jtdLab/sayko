part of '../sign_up_password.dart';

@lockd
abstract class SignUpPasswordState with _$SignUpPasswordState {
  const factory SignUpPasswordState({
    required SignUpPasswordStatus status,
    required String email,
    required String password,
  }) = _SignUpPasswordState;
}
