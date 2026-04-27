part of 'safety_check.dart';

extension SafetyCheckRoutingBuildContextX on BuildContext {
  Future<void> pushSafetyBlocked() {
    return wouter.actions.push<void>('/onboarding/safety-blocked');
  }

  Future<void> pushAssessment() {
    return wouter.actions.push<void>('/onboarding/assessment');
  }
}
