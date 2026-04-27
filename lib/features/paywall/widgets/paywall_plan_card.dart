part of '../paywall.dart';

class PaywallPlanCard extends HookWidget {
  const PaywallPlanCard({
    required this.plan,
    required this.title,
    required this.sub,
    required this.price,
    this.badge,
    super.key,
  });

  final PaywallPlan plan;
  final String title;
  final String sub;
  final String price;
  final String? badge;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PaywallCubit>();
    final theme = context.theme;

    final (selected,) = useBlocSelector(
      cubit,
      (PaywallState state) => (state.plan == plan,),
    );

    return GestureDetector(
      onTap: () => cubit.selectPlan(plan),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.colors.card,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: selected ? theme.colors.foreground : theme.colors.border,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected ? theme.colors.foreground : const Color(0x00000000),
                border: Border.all(
                  color: selected ? theme.colors.foreground : theme.colors.border,
                  width: 1.5,
                ),
              ),
            ),
            const SaykoGap.oneAndHalf(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: theme.typography.sm.copyWith(fontWeight: FontWeight.w600),
                      ),
                      if (badge != null) ...[
                        const SaykoGap.one(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: theme.colors.primary.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            badge!.toUpperCase(),
                            style: theme.typography.xs.copyWith(
                              color: theme.colors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    sub,
                    style: theme.typography.xs.copyWith(
                      color: theme.colors.mutedForeground,
                    ),
                  ),
                ],
              ),
            ),
            Text(price, style: theme.typography.lg.copyWith(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
