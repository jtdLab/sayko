part of 'library.dart';

LibraryFilter libraryFilterFromCatalogKey(String key) {
  return switch (key) {
    'stress' => LibraryFilter.stress,
    'sleep' => LibraryFilter.sleep,
    'self' => LibraryFilter.self,
    'relations' => LibraryFilter.relations,
    'focus' => LibraryFilter.focus,
    'body' => LibraryFilter.body,
    _ => LibraryFilter.all,
  };
}
