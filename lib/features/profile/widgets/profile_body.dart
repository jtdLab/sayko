part of '../profile.dart';

class ProfileBody extends HookWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.profile;
    final theme = context.theme;

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        const ProfileHeader(),
        const SaykoGap.three(),
        const ProfileSummaryCard(),
        const SaykoGap.two(),
        ProfileRow(icon: FIcons.bookmark, label: i18n.savedRow.label),
        ProfileRow(icon: FIcons.download, label: i18n.offlineRow.label),
        ProfileRow(icon: FIcons.globe, label: i18n.languageRow.label),
        ProfileRow(icon: FIcons.shield, label: i18n.privacyRow.label),
        ProfileRow(
          icon: FIcons.settings,
          label: i18n.settingsRow.label,
          onTap: () => context.pushSettingsFromProfile(),
        ),
        const SaykoGap.three(),
        Text(
          i18n.footer.text,
          style: theme.typography.xs.copyWith(color: theme.colors.mutedForeground),
        ),
      ],
    );
  }
}
