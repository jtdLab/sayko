part of 'profile.dart';

extension ProfileRoutingBuildContextX on BuildContext {
  Future<void> pushSettingsFromProfile() {
    return wouter.actions.push<void>('/settings');
  }
}
