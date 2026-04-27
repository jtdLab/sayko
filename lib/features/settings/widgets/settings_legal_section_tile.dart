part of '../settings.dart';

class SettingsLegalSectionTile extends HookWidget with FTileMixin {
  const SettingsLegalSectionTile({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.settings.legalSectionTile;

    return FTile(
      prefix: const Icon(FIcons.shield),
      title: Text(i18n.title),
      suffix: const Icon(FIcons.chevronRight),
      onPress: () {},
    );
  }
}
