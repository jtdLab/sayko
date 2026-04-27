part of '../settings.dart';

class SettingsLegalSection extends HookWidget {
  const SettingsLegalSection({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.settings.legalSection;

    return FTileGroup(
      label: Text(i18n.title),
      children: const [SettingsLegalSectionTile()],
    );
  }
}
