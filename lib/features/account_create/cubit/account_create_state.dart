part of '../account_create.dart';

@lockd
abstract class AccountCreateState with _$AccountCreateState {
  const factory AccountCreateState({
    required AccountCreateStatus status,
    required bool hasAcceptedTerms,
    required String name,
  }) = _AccountCreateState;
}
