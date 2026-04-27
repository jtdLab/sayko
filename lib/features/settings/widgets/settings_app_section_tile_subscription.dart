part of '../settings.dart';

class SettingsAppSectionTileSubscription extends HookWidget with FTileMixin {
  const SettingsAppSectionTileSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.settings.appSectionTileSubscription;

    return FTile(
      prefix: const Icon(FIcons.sparkles),
      title: Text(i18n.title),
      suffix: const Icon(FIcons.chevronRight),
      onPress: () {
        context.showPaywallSheet();
      },
    );
  }
}
