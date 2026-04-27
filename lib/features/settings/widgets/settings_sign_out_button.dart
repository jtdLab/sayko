part of '../settings.dart';

class SettingsSignOutButton extends HookWidget {
  const SettingsSignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();
    final i18n = context.i18n.features.settings.signOutButton;

    return FButton(
      variant: .outline,
      prefix: const Icon(FIcons.logOut),
      onPress: () async {
        final confirmed = await context.pushLogoutConfirm();
        if (confirmed) await cubit.logout();
      },
      child: Text(i18n.title),
    );
  }
}
