part of '../library.dart';

class LibraryFilterChips extends HookWidget {
  const LibraryFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LibraryCubit>();
    final i18n = context.i18n.features.library;

    final (active,) = useBlocSelector(
      cubit,
      (LibraryState state) => (state.filter,),
    );

    final entries = <(LibraryFilter, String)>[
      (LibraryFilter.all, i18n.filterAll.label),
      (LibraryFilter.stress, i18n.filterStress.label),
      (LibraryFilter.sleep, i18n.filterSleep.label),
      (LibraryFilter.self, i18n.filterSelf.label),
      (LibraryFilter.relations, i18n.filterRelations.label),
      (LibraryFilter.focus, i18n.filterFocus.label),
      (LibraryFilter.body, i18n.filterBody.label),
    ];

    final chips = <Widget>[
      for (final (f, label) in entries)
        FButton(
          variant: active == f ? .primary : .outline,
          onPress: () => cubit.changeFilter(f),
          child: Text(label),
        ),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < chips.length; i++) ...[
            if (i > 0) const SizedBox(width: 6),
            chips[i],
          ],
        ],
      ),
    );
  }
}
