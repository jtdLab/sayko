part of '../settings.dart';

class SettingsAppSection extends HookWidget {
  const SettingsAppSection({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.settings.appSection;

    return FTileGroup(
      label: Text(i18n.title),
      children: const [
        SettingsAppSectionTileAppearance(),
        SettingsAppSectionTileSystemLanguage(),
      ],
    );
  }
}
