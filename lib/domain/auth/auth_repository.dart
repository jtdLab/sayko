part of 'auth.dart';

class AuthRepository {
  AuthRepository({required LocalAuthApi localAuthApi})
    : _localAuthApi = localAuthApi;

  final LocalAuthApi _localAuthApi;

  @visibleForTesting
  static Logger logger = Logger('AuthRepository');

  Future<void> deleteAccount() async {
    try {
      await _localAuthApi.deleteAccount();
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to delete account.', e, stackTrace);
      throw AuthDeleteAccountFailure();
    }
  }

  User? readUser() {
    return _localAuthApi.readUser()?.toModel();
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _localAuthApi.sendPasswordResetEmail(email: email);
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to send reset email.', e, stackTrace);
      throw AuthSendPasswordResetEmailFailure();
    }
  }

  Future<void> sendVerificationEmail() async {
    try {
      await _localAuthApi.sendVerificationEmail();
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to send verification email.', e, stackTrace);
      throw AuthSendVerificationEmailFailure();
    }
  }

  Future<void> signInWithApple() async {
    try {
      await _localAuthApi.signInWithApple();
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to sign in with Apple.', e, stackTrace);
      throw AuthSignInWithAppleFailure();
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      await _localAuthApi.signInWithGoogle();
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to sign in with Google.', e, stackTrace);
      throw AuthSignInWithGoogleFailure();
    }
  }

  Future<void> signInWithPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _localAuthApi.signInWithPassword(email: email, password: password);
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to sign in with password.', e, stackTrace);
      throw AuthSignInWithPasswordFailure();
    }
  }

  Future<void> signOut() async {
    try {
      await _localAuthApi.signOut();
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to sign out.', e, stackTrace);
      throw AuthSignOutFailure();
    }
  }

  Future<void> signUpWithPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _localAuthApi.signUpWithPassword(email: email, password: password);
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to sign up with password.', e, stackTrace);
      throw AuthSignUpWithPasswordFailure();
    }
  }

  Stream<User?> watchUser() {
    return _localAuthApi.watchUser().map((user) => user?.toModel());
  }
}
