part of 'settings.dart';

extension on BuildContext {
  Future<bool> pushDeleteAccountConfirm() async {
    final result = await showDialog<bool>(
      (context) => const DeleteAccountConfirmDialog(),
    );
    return result ?? false;
  }

  Future<bool> pushLogoutConfirm() async {
    final result = await showDialog<bool>(
      (context) => const LogoutConfirmDialog(),
    );
    return result ?? false;
  }

  Future<void> pushSettingsAppearance() async {
    await wouter.actions.push('/settings-appearance');
  }

  Future<void> pushSettingsSystemLanguage() async {
    await wouter.actions.push('/settings-system-language');
  }
}
