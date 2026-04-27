part of '../settings_appearance.dart';

class SettingsAppearanceBody extends HookWidget {
  const SettingsAppearanceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FItemGroup(
          divider: FItemDivider.indented,
          children: [
            for (final appearance in Appearance.values)
              SettingsAppearanceItem(appearance: appearance),
          ],
        ),
      ],
    );
  }
}
