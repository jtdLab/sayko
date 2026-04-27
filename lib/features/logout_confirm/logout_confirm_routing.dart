part of 'logout_confirm.dart';

extension on BuildContext {
  void pop({bool? result}) {
    appNavigator.pop<bool>(result);
  }
}
