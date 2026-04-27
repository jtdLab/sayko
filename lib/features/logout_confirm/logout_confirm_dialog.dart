part of 'logout_confirm.dart';

class LogoutConfirmDialog extends HookWidget {
  const LogoutConfirmDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final animation = context.fDialogAnimation;
    final i18n = context.i18n.features.logoutConfirm;

    return FDialog(
      animation: animation,
      direction: .horizontal,
      title: Text(i18n.title),
      actions: const [
        LogoutConfirmConfirmButton(),
        LogoutConfirmCancelButton(),
      ],
    );
  }
}
