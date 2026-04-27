part of '../settings.dart';

class SettingsVersion extends HookWidget {
  const SettingsVersion({super.key});

  @override
  Widget build(BuildContext context) {
    final appInfo = context.read<AppInfo>();
    final i18n = context.i18n.features.settings.version;
    final theme = context.theme;

    final buildNumber = appInfo.buildNumber;
    final colors = theme.colors;
    final typography = theme.typography;
    final version = appInfo.version;

    return Center(
      child: Text(
        i18n.text(version: version, buildNumber: buildNumber),
        style: typography.sm.copyWith(color: colors.mutedForeground),
      ),
    );
  }
}
