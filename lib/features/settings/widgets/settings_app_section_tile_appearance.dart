part of '../settings.dart';

class SettingsAppSectionTileAppearance extends HookWidget with FTileMixin {
  const SettingsAppSectionTileAppearance({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();
    final i18n = context.i18n.features.settings.appSectionTileAppearance;
    final theme = context.theme;

    final appearance = useBlocSelector(
      cubit,
      (SettingsState state) => state.appearance,
    );

    final colors = theme.colors;

    return FTile(
      prefix: const Icon(FIcons.palette),
      title: Text(i18n.title),
      details: Text(
        appearance.i18n(context),
        style: TextStyle(color: colors.mutedForeground),
      ),
      suffix: const Icon(FIcons.chevronRight),
      onPress: () => context.pushSettingsAppearance(),
    );
  }
}
