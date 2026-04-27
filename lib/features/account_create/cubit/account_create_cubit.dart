part of '../account_create.dart';

AccountCreateState _initialState() {
  return const AccountCreateState(
    status: AccountCreateStatus.idle,
    name: '',
    hasAcceptedTerms: false,
  );
}

class AccountCreateCubit extends Cubit<AccountCreateState>
    with
        BlocPresentationMixin<
          AccountCreateState,
          AccountCreatePresentationEvent
        > {
  AccountCreateCubit({required UserDataRepository userDataRepository})
    : _userDataRepository = userDataRepository,
      super(_initialState());

  final UserDataRepository _userDataRepository;

  void changeName(String name) {
    emit(state.copyWith(name: name));
  }

  Future<void> createAccount() async {
    emit(state.copyWith(status: AccountCreateStatus.loading));
    try {
      await _userDataRepository.update(displayName: state.name);
    } on UserDataUpdateFailure catch (_) {
      emit(state.copyWith(status: AccountCreateStatus.idle));
      emitPresentation(AccountCreatePresentationEvent.createAccountFailed());
    }
  }

  void toggleTermsAcceptance() {
    final hasAcceptedTerms = !state.hasAcceptedTerms;
    emit(state.copyWith(hasAcceptedTerms: hasAcceptedTerms));
  }
}
