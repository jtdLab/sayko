part of 'local_auth.dart';

class LocalAuthApi {
  LocalAuthApi();

  final BehaviorSubject<UserDto?> userSubject = BehaviorSubject.seeded(null);

  Future<void> deleteAccount() async {
    userSubject.add(null);
  }

  UserDto? readUser() {
    return userSubject.valueOrNull;
  }

  Future<void> sendPasswordResetEmail({required String email}) async {}

  Future<void> sendVerificationEmail() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    userSubject.add(const UserDto(id: '1', isVerified: true));
  }

  Future<void> signInWithApple({
    FutureOr<void> Function()? onCompleteNative,
  }) async {
    await onCompleteNative?.call();
    userSubject.add(const UserDto(id: '1', isVerified: true));
  }

  Future<void> signInWithGoogle({
    FutureOr<void> Function()? onCompleteNative,
  }) async {
    await onCompleteNative?.call();
    userSubject.add(const UserDto(id: '1', isVerified: true));
  }

  Future<void> signInWithPassword({
    required String email,
    required String password,
  }) async {
    userSubject.add(const UserDto(id: '1', isVerified: true));
  }

  Future<void> signOut() async {
    userSubject.add(null);
  }

  Future<void> signUpWithPassword({
    required String email,
    required String password,
  }) async {
    userSubject.add(const UserDto(id: '1', isVerified: false));
  }

  Stream<UserDto?> watchUser() {
    return userSubject.stream;
  }
}
