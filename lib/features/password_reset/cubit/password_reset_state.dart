part of '../password_reset.dart';

@lockd
abstract class PasswordResetState with _$PasswordResetState {
  const factory PasswordResetState({
    required PasswordResetStatus status,
    required String email,
  }) = _PasswordResetState;
}
