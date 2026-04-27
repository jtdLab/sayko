part of 'welcome.dart';

extension WelcomeRoutingBuildContextX on BuildContext {
  Future<void> pushOnboardingNextFromWelcome() {
    return wouter.actions.push<void>('/onboarding/safety-check');
  }
}
