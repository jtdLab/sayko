part of '../results.dart';

class ResultsAxisBar extends HookWidget {
  const ResultsAxisBar({required this.label, required this.value, super.key});
  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: theme.typography.sm),
              Text(
                '${value.toStringAsFixed(1)} / 5',
                style: theme.typography.xs.copyWith(
                  color: theme.colors.mutedForeground,
                ),
              ),
            ],
          ),
          const SaykoGap.threeQuarters(),
          FDeterminateProgress(value: (value / 5).clamp(0, 1)),
        ],
      ),
    );
  }
}
