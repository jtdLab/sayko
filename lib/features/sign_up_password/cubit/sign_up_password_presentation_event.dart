part of '../sign_up_password.dart';

@lockd
sealed class SignUpPasswordPresentationEvent
    with _$SignUpPasswordPresentationEvent {
  factory SignUpPasswordPresentationEvent.signUpFailed() =
      SignUpPasswordPresentationEventSignUpFailed;
}
