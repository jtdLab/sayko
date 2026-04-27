part of 'sign_up.dart';

extension on BuildContext {
  void pop() {
    wouter.actions.pop();
  }

  Future<void> pushLogin() async {
    const path = '/auth/login';
    final state = appWouter.state;
    if (state.fullPath == path) return;
    if (state.stack.any((e) => e.path == path)) {
      wouter.actions.popUntil((p) => p == path);
    } else {
      await wouter.actions.push<void>(path);
    }
  }

  Future<void> pushSignUpPassword() async {
    await wouter.actions.push<void>('/auth/sign-up-password');
  }
}
