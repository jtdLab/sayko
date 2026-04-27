part of 'onboarding.dart';

extension OnboardingRoutingBuildContextX on BuildContext {
  Future<void> pushOnboardingWelcome() {
    return wouter.actions.push<void>('/onboarding/welcome');
  }

  Future<void> pushOnboardingSafetyCheck() {
    return wouter.actions.push<void>('/onboarding/safety-check');
  }

  Future<void> pushOnboardingSafetyBlocked() {
    return wouter.actions.push<void>('/onboarding/safety-blocked');
  }

  Future<void> pushOnboardingAssessment() {
    return wouter.actions.push<void>('/onboarding/assessment');
  }

  Future<void> pushOnboardingResults() {
    return wouter.actions.push<void>('/onboarding/results');
  }
}
