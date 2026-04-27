part of 'auth.dart';

extension on BuildContext {
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
