part of 'safety_check.dart';

extension SafetyCheckRoutingBuildContextX on BuildContext {
  /// Swap the check route for blocked so the stack stays shallow (paired with
  /// popSafetyBlocked on the blocked screen).
  Future<void> pushSafetyBlocked() {
    return wouter.actions.replace<void>('/onboarding/safety-blocked');
  }

  Future<void> pushAssessment() {
    return wouter.actions.push<void>('/onboarding/assessment');
  }
}
