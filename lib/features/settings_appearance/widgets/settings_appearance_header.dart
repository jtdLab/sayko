part of '../settings_appearance.dart';

class SettingsAppearanceHeader extends HookWidget {
  const SettingsAppearanceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.settingsAppearance.header;

    return FHeader.nested(
      title: Text(i18n.title),
      prefixes: [FHeaderAction.back(onPress: () => context.pop())],
    );
  }
}
