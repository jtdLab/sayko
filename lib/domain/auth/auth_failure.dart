part of 'auth.dart';

sealed class AuthFailure extends Failure {}

final class AuthDeleteAccountFailure extends AuthFailure {}

final class AuthSendPasswordResetEmailFailure extends AuthFailure {}

final class AuthSendVerificationEmailFailure extends AuthFailure {}

final class AuthSignInWithAppleFailure extends AuthFailure {}

final class AuthSignInWithGoogleFailure extends AuthFailure {}

final class AuthSignInWithPasswordFailure extends AuthFailure {}

final class AuthSignOutFailure extends AuthFailure {}

final class AuthSignUpWithPasswordFailure extends AuthFailure {}
