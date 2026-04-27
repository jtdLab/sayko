part of '../settings.dart';

class SettingsHeader extends HookWidget {
  const SettingsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.settings.header;

    return FHeader(title: Text(i18n.title));
  }
}
