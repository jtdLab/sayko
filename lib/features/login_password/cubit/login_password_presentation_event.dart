part of '../login_password.dart';

@lockd
sealed class LoginPasswordPresentationEvent
    with _$LoginPasswordPresentationEvent {
  factory LoginPasswordPresentationEvent.signInFailed() =
      LoginPasswordPresentationEventSignInFailed;
}
