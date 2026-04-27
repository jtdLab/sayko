part of '../library.dart';

class LibraryBody extends HookWidget {
  const LibraryBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LibraryCubit>();
    final i18n = context.i18n.features.library;

    final (filter,) = useBlocSelector(
      cubit,
      (LibraryState state) => (state.filter,),
    );

    final all = SessionCatalog.all;
    final visible = filter == LibraryFilter.all
        ? all
        : all.where((s) {
            final cat = libraryFilterFromCatalogKey(s.libraryCategoryKey);
            return cat == filter;
          }).toList();

    final pad = context.theme.style.pagePadding;
    return ListView(
      padding: EdgeInsets.only(top: pad.top, bottom: pad.bottom),
      children: [
        const LibraryHeader(),
        const SaykoGap.two(),
        const LibraryFilterChips(),
        const SaykoGap.three(),
        SaykoEyebrow(i18n.allSessions.label),
        const SaykoGap.one(),
        for (final s in visible)
          LibrarySessionRow(
            session: s,
            onTap: () {
              if (s.requiresSubscription) {
                context.showPaywallSheet();
              } else {
                context.pushPlayerSession(s.id);
              }
            },
          ),
      ],
    );
  }
}
