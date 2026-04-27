part of '../library.dart';

LibraryState _initialState() {
  return const LibraryState(filter: LibraryFilter.all);
}

class LibraryCubit extends Cubit<LibraryState> {
  LibraryCubit() : super(_initialState());

  void changeFilter(LibraryFilter filter) {
    emit(state.copyWith(filter: filter));
  }
}
