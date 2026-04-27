part of '../verify_email.dart';

@lockd
sealed class VerifyEmailPresentationEvent with _$VerifyEmailPresentationEvent {
  factory VerifyEmailPresentationEvent.emailVerified() =
      VerifyEmailPresentationEventEmailVerified;
  factory VerifyEmailPresentationEvent.sendVerifyEmailFailed() =
      VerifyEmailPresentationEventSendVerifyEmailFailed;
}
