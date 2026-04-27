part of '../paywall.dart';

class PaywallHeader extends HookWidget {
  const PaywallHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.paywall.header;
    final theme = context.theme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 140,
          child: SaykoSessionArt(
            tone: SaykoTone.sand,
            child: Center(
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0x80FFFFFF),
                  shape: BoxShape.circle,
                ),
                child: Icon(FIcons.lock, color: theme.colors.foreground),
              ),
            ),
          ),
        ),
        const SaykoGap.oneAndHalf(),
        SaykoSerifText(i18n.title, size: 28, height: 1.2),
        const SaykoGap.one(),
        Text(
          i18n.body,
          style: theme.typography.sm.copyWith(
            color: theme.colors.mutedForeground,
            height: 1.55,
          ),
        ),
      ],
    );
  }
}
