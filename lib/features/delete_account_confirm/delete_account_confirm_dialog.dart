part of 'delete_account_confirm.dart';

class DeleteAccountConfirmDialog extends HookWidget {
  const DeleteAccountConfirmDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final animation = context.fDialogAnimation;
    final i18n = context.i18n.features.deleteAccountConfirm;

    return FDialog(
      animation: animation,
      direction: .horizontal,
      title: Text(i18n.title),
      body: Text(i18n.subtitle),
      actions: const [
        DeleteAccountConfirmConfirmButton(),
        DeleteAccountConfirmCancelButton(),
      ],
    );
  }
}
