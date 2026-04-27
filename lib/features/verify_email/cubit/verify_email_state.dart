part of '../verify_email.dart';

@lockd
abstract class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState({required VerifyEmailStatus status}) =
      _VerifyEmailState;
}
