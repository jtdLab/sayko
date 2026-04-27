part of '../user_data.dart';

const onboardingLastStep = 4;

@lockd
abstract class UserData with _$UserData {
  const factory UserData({
    required String displayName,
    int? onboardingStep,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _UserData.fromJson(json);
}
