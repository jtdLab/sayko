part of '../account_create.dart';

@lockd
sealed class AccountCreatePresentationEvent
    with _$AccountCreatePresentationEvent {
  factory AccountCreatePresentationEvent.createAccountFailed() =
      AccountCreatePresentationEventCreateAccountFailed;
}
