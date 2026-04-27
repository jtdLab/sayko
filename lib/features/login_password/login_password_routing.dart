part of 'login_password.dart';

extension on BuildContext {
  void pop() {
    wouter.actions.pop();
  }

  Future<void> pushPasswordReset() async {
    await wouter.actions.push<void>('/auth/password-reset');
  }
}
