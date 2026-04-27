part of '../paywall.dart';

class PaywallSubscribeButton extends HookWidget {
  const PaywallSubscribeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.paywall.subscribeButton;
    return FButton(
      onPress: () {},
      child: Text(i18n.text),
    );
  }
}
