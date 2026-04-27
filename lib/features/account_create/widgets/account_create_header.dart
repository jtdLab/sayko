part of '../account_create.dart';

class AccountCreateHeader extends HookWidget {
  const AccountCreateHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.accountCreate.header;

    return FHeader.nested(title: Text(i18n.title));
  }
}
