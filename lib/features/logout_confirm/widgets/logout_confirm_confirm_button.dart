part of '../logout_confirm.dart';

class LogoutConfirmConfirmButton extends HookWidget {
  const LogoutConfirmConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    final haptics = context.read<Haptics>();
    final i18n = context.i18n.features.logoutConfirm.confirmButton;

    return FButton(
      onPress: () {
        haptics.selectionClick();
        context.pop(result: true);
      },
      child: Text(i18n.text),
    );
  }
}
