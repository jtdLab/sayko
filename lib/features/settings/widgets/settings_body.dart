part of '../settings.dart';

class SettingsBody extends HookWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.only(bottom: 16);

    return const SingleChildScrollView(
      padding: padding,
      child: Column(
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
