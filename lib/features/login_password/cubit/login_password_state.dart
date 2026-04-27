part of '../login_password.dart';

@lockd
abstract class LoginPasswordState with _$LoginPasswordState {
  const factory LoginPasswordState({
    required LoginPasswordStatus status,
    required String email,
    required String password,
  }) = _LoginPasswordState;
}
