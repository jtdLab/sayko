part of 'safety_blocked.dart';

const _safetyCheckPath = '/onboarding/safety-check';

extension SafetyBlockedRoutingBuildContextX on BuildContext {
  /// Returns to the safety check. Pops when the route under this one is still
  /// the check (older push stack); otherwise replaces so we do not return to
  /// welcome after a shallow check→blocked navigation.
  Future<void> popSafetyBlocked() async {
    await read<UserDataRepository>().update(
      displayName: null,
      onboardingStep: 1,
    );
    final stack = wouter.state.stack;
    if (stack.length >= 2 && stack[stack.length - 2].path == _safetyCheckPath) {
      wouter.actions.pop();
      return;
    }
    await wouter.actions.replace<void>(_safetyCheckPath);
  }
}
