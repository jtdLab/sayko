part of '../logout_confirm.dart';

class LogoutConfirmCancelButton extends HookWidget {
  const LogoutConfirmCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    final haptics = context.read<Haptics>();
    final i18n = context.i18n.features.logoutConfirm.cancelButton;

    return FButton(
      variant: .outline,
      onPress: () {
        haptics.selectionClick();
        context.pop(result: false);
      },
      child: Text(i18n.text),
    );
  }
}
