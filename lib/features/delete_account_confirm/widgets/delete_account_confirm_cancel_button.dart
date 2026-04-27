part of '../delete_account_confirm.dart';

class DeleteAccountConfirmCancelButton extends HookWidget {
  const DeleteAccountConfirmCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    final haptics = context.read<Haptics>();
    final i18n = context.i18n.features.deleteAccountConfirm.cancelButton;

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
