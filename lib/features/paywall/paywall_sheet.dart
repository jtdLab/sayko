part of 'paywall.dart';

class PaywallSheet extends HookWidget {
  const PaywallSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.colors;
    return ColoredBox(
      color: colors.background,
      child: const PaywallBody(),
    );
  }
}
