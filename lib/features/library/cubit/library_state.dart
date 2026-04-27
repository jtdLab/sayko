part of '../library.dart';

@lockd
abstract class LibraryState with _$LibraryState {
  const factory LibraryState({required LibraryFilter filter}) = _LibraryState;
}
