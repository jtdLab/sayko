part of '../password_reset.dart';

PasswordResetState _initialState() {
  return const PasswordResetState(status: PasswordResetStatus.idle, email: '');
}

class PasswordResetCubit extends Cubit<PasswordResetState>
    with
        BlocPresentationMixin<
          PasswordResetState,
          PasswordResetPresentationEvent
        > {
  PasswordResetCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(_initialState());

  final AuthRepository _authRepository;

  void changeEmail(String email) {
    emit(state.copyWith(email: email));
  }

  Future<void> sendPasswordResetEmail() async {
    emit(state.copyWith(status: PasswordResetStatus.loading));
    try {
      await _authRepository.sendPasswordResetEmail(email: state.email);
      emit(state.copyWith(status: PasswordResetStatus.idle));
      emitPresentation(
        PasswordResetPresentationEvent.sendPasswordResetEmailSucceeded(),
      );
    } on AuthSendPasswordResetEmailFailure catch (_) {
      emit(state.copyWith(status: PasswordResetStatus.idle));
      emitPresentation(
        PasswordResetPresentationEvent.sendPasswordResetEmailFailed(),
      );
    }
  }
}
