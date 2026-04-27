part of 'login.dart';

extension on BuildContext {
  void pop() {
    wouter.actions.pop();
  }

  Future<void> pushLoginPassword() async {
    await wouter.actions.push<void>('/auth/login-password');
  }

  Future<void> pushSignUp() async {
    const path = '/auth/sign-up';
    final state = appWouter.state;
    if (state.fullPath == path) return;
    if (state.stack.any((e) => e.path == path)) {
      wouter.actions.popUntil((p) => p == path);
    } else {
      await wouter.actions.push<void>(path);
    }
  }
}
