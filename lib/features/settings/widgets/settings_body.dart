part of '../settings.dart';

class SettingsBody extends HookWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bottom = context.theme.style.pagePadding.bottom + 12;

    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: bottom),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsAppSection(),
          SaykoGap.oneAndHalf(),
          SettingsLegalSection(),
          SaykoGap.two(),
          SettingsSignOutButton(),
          SaykoGap.one(),
          SettingsDeleteAccountButton(),
          SaykoGap.two(),
          SettingsVersion(),
        ],
      ),
    );
  }
}
