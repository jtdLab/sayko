part of '../settings.dart';

class SettingsAppSectionTileSystemLanguage extends HookWidget with FTileMixin {
  const SettingsAppSectionTileSystemLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.settings.appSectionTileSystemLanguage;
    final locale = context.locale;
    final theme = context.theme;

    final colors = theme.colors;

    return FTile(
      prefix: const Icon(FIcons.languages),
      title: Text(i18n.title),
      details: Text(
        locale.i18n(context),
        style: TextStyle(color: colors.mutedForeground),
      ),
      suffix: const Icon(FIcons.chevronRight),
      onPress: () => context.pushSettingsSystemLanguage(),
    );
  }
}
