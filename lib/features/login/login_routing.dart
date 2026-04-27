part of 'login.dart';

extension LoginRoutingBuildContextX on BuildContext {
  void pop() {
    wouter.actions.pop();
  }

  Future<void> pushLoginPassword() async {
    await wouter.actions.push<void>('/auth/login-password');
  }
}
