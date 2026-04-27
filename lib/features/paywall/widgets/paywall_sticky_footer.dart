part of '../paywall.dart';

class PaywallStickyFooter extends HookWidget {
  const PaywallStickyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final pad = theme.style.pagePadding;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colors.background,
        border: Border(top: BorderSide(color: theme.colors.border)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            pad.left,
            12,
            pad.right,
            pad.bottom + 12,
          ),
          child: const PaywallSubscribeButton(),
        ),
      ),
    );
  }
}
