part of '../delete_account_confirm.dart';

class DeleteAccountConfirmConfirmButton extends HookWidget {
  const DeleteAccountConfirmConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    final haptics = context.read<Haptics>();
    final i18n = context.i18n.features.deleteAccountConfirm.confirmButton;

    return FButton(
      variant: .destructive,
      onPress: () {
        haptics.selectionClick();
        context.pop(result: true);
      },
      child: Text(i18n.text),
    );
  }
}
