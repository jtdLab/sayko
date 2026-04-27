part of '../home.dart';

class HomeHeader extends HookWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.home.header;

    return FHeader(title: Text(i18n.title));
  }
}
