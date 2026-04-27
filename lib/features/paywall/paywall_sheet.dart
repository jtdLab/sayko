part of 'paywall.dart';

class PaywallSheet extends HookWidget {
  const PaywallSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colors = theme.colors;
    final pad = theme.style.pagePadding;
    final sheetTitle = context.i18n.features.paywall.sheetTitle;
    return ColoredBox(
      color: colors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(pad.left, 8, pad.right, 4),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52),
                  child: Text(
                    sheetTitle.text,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.typography.sm.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colors.foreground,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FButton.icon(
                    onPress: () => Navigator.of(context).pop(),
                    child: Icon(
                      FIcons.x,
                      color: colors.mutedForeground,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: PaywallBody()),
          const PaywallStickyFooter(),
        ],
      ),
    );
  }
}
