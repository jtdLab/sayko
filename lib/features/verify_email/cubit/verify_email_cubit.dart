part of '../verify_email.dart';

VerifyEmailState _initialState() {
  return const VerifyEmailState(status: VerifyEmailStatus.idle);
}

class VerifyEmailCubit extends Cubit<VerifyEmailState>
    with
        BlocPresentationMixin<VerifyEmailState, VerifyEmailPresentationEvent>,
        CubitSubscriptionMixin {
  VerifyEmailCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(_initialState()) {
    emitOnEach(authRepository.watchUser(), (user) {
      if (user case final User user when user.isVerified) {
        emitPresentation(VerifyEmailPresentationEvent.emailVerified());
      }
    });
  }

  final AuthRepository _authRepository;

  Future<void> sendVerifyEmail() async {
    if (state.status == VerifyEmailStatus.loading) return;
    emit(state.copyWith(status: VerifyEmailStatus.loading));
    try {
      await _authRepository.sendVerificationEmail();
    } on AuthSendVerificationEmailFailure catch (_) {
      emit(state.copyWith(status: VerifyEmailStatus.idle));
      emitPresentation(VerifyEmailPresentationEvent.sendVerifyEmailFailed());
    }
  }
}
