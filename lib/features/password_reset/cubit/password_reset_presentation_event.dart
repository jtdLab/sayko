part of '../password_reset.dart';

@lockd
sealed class PasswordResetPresentationEvent
    with _$PasswordResetPresentationEvent {
  factory PasswordResetPresentationEvent.sendPasswordResetEmailFailed() =
      PasswordResetPresentationEventSendPasswordResetEmailFailed;
  factory PasswordResetPresentationEvent.sendPasswordResetEmailSucceeded() =
      PasswordResetPresentationEventSendPasswordResetEmailSucceeded;
}
