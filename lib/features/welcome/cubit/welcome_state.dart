part of '../welcome.dart';

@lockd
abstract class WelcomeState with _$WelcomeState {
  const factory WelcomeState({required int slideIndex}) = _WelcomeState;
}
