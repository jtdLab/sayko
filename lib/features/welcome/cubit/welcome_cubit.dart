part of '../welcome.dart';

const _slideCount = 3;

WelcomeState _initialState() {
  return const WelcomeState(slideIndex: 0);
}

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(_initialState());

  bool get isLast => state.slideIndex >= _slideCount - 1;

  void next() {
    if (isLast) return;
    emit(state.copyWith(slideIndex: state.slideIndex + 1));
  }
}
