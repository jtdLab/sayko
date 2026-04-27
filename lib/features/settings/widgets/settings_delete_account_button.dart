part of '../settings.dart';

class SettingsDeleteAccountButton extends HookWidget {
  const SettingsDeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();
    final i18n = context.i18n.features.settings.deleteAccountButton;
    final theme = context.theme;

    final colors = theme.colors;

    return FButton(
      variant: .ghost,
      onPress: () async {
        final confirmed = await context.pushDeleteAccountConfirm();
        if (confirmed) await cubit.deleteAccount();
      },
      child: Text(i18n.title, style: TextStyle(color: colors.destructive)),
    );
  }
}
