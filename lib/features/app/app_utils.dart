part of 'app.dart';

extension on UserData {
  bool get isEmpty {
    return this == const UserData(displayName: '');
  }
}

AppStatus _status(User? Function() userFn, UserData Function() userDataFn) {
  final user = userFn();
  final userData = userDataFn();
  return switch (user) {
    final User user when user.isVerified && userData.isEmpty =>
      AppStatus.authenticatedAndVerified,
    final User user when user.isVerified =>
      AppStatus.authenticatedAndAccountCreated,
    User() => AppStatus.authenticated,
    null => AppStatus.unauthenticated,
  };
}
