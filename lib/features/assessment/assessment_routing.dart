part of 'assessment.dart';

extension AssessmentRoutingBuildContextX on BuildContext {
  Future<void> pushResults() {
    return wouter.actions.push<void>('/onboarding/results');
  }
}
