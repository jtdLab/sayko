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

    final all = <(String, String, LibraryFilter, SaykoTone, bool)>[
      ('A Quiet Place to Land', 'Stress · 28 min', LibraryFilter.stress, SaykoTone.sand, false),
      ('Releasing the Day', 'Sleep · 32 min', LibraryFilter.sleep, SaykoTone.dusk, true),
      ('The Inner Friend', 'Self · 26 min', LibraryFilter.self, SaykoTone.sage, true),
      ('Soft Focus', 'Focus · 30 min', LibraryFilter.focus, SaykoTone.sand, true),
      ('Repairing After Conflict', 'Relations · 38 min', LibraryFilter.relations, SaykoTone.rose, true),
      ('Returning to the Body', 'Body · 24 min', LibraryFilter.body, SaykoTone.sage, true),
      ('The Long Exhale', 'Stress · 35 min', LibraryFilter.stress, SaykoTone.dusk, true),
      ('Sleep Without Effort', 'Sleep · 40 min', LibraryFilter.sleep, SaykoTone.dusk, true),
    ];
    final visible = filter == LibraryFilter.all
        ? all
        : all.where((s) => s.$3 == filter).toList();

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
            title: s.$1,
            subtitle: s.$2,
            tone: s.$4,
            locked: s.$5,
          ),
      ],
    );
  }
}
