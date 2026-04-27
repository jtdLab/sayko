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

    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        separatorBuilder: (_, __) => const SizedBox(width: 6),
        itemBuilder: (context, i) {
          final (f, label) = entries[i];
          return FButton(
            variant: active == f ? .primary : .outline,
            onPress: () => cubit.changeFilter(f),
            child: Text(label),
          );
        },
      ),
    );
  }
}
