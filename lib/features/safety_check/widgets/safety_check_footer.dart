part of '../safety_check.dart';

class SafetyCheckFooter extends HookWidget {
  const SafetyCheckFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.safetyCheck;
    final theme = context.theme;
    final pad = theme.style.pagePadding;

    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.fromLTRB(pad.left, 8, pad.right, pad.bottom + 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SafetyCheckConfirmButton(),
            const SaykoGap.one(),
            Text(
              i18n.footer.text,
              textAlign: TextAlign.center,
              style: theme.typography.xs.copyWith(
                color: theme.colors.mutedForeground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
