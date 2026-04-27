import 'package:sayko/domain/session/listening_session.dart';

/// In-memory catalog until a remote API exists.
abstract final class SessionCatalog {
  static const String demoAudioUrl =
      'https://storage.googleapis.com/exoplayer-test-media-0/play.mp3';

  static final Map<String, ListeningSession> _byId = {
    for (final s in all) s.id: s,
  };

  static List<ListeningSession> get all => const [
        quietPlace,
        releasingTheDay,
        theInnerFriend,
        softFocus,
        repairingAfterConflict,
        returningToTheBody,
        theLongExhale,
        sleepWithoutEffort,
      ];

  static ListeningSession? byId(String id) => _byId[id];

  static ListeningSession resolve(String id) =>
      byId(id) ?? quietPlace;

  /// Sessions surfaced under Today → AI recommendations (order preserved).
  static List<ListeningSession> get todayRecommendations => const [
        releasingTheDay,
        theInnerFriend,
        softFocus,
      ];

  static List<ListeningSession> get resultsRecommendations => const [
        quietPlace,
        releasingTheDay,
        theInnerFriend,
      ];

  static const ListeningSession quietPlace = ListeningSession(
    id: 'quiet-place',
    title: 'A Quiet Place to Land',
    subtitle: 'Stress · 28 min',
    durationSeconds: 28 * 60,
    requiresSubscription: false,
    libraryCategoryKey: 'stress',
    toneKey: 'sand',
    coverImageUrl: 'https://picsum.photos/seed/sayko-quiet/512/512',
    audioUrl: demoAudioUrl,
  );

  static const ListeningSession releasingTheDay = ListeningSession(
    id: 'releasing-the-day',
    title: 'Releasing the Day',
    subtitle: 'Sleep · 32 min',
    durationSeconds: 32 * 60,
    requiresSubscription: true,
    libraryCategoryKey: 'sleep',
    toneKey: 'dusk',
    coverImageUrl: 'https://picsum.photos/seed/sayko-release/512/512',
    audioUrl: demoAudioUrl,
  );

  static const ListeningSession theInnerFriend = ListeningSession(
    id: 'the-inner-friend',
    title: 'The Inner Friend',
    subtitle: 'Self · 26 min',
    durationSeconds: 26 * 60,
    requiresSubscription: true,
    libraryCategoryKey: 'self',
    toneKey: 'sage',
    coverImageUrl: 'https://picsum.photos/seed/sayko-inner/512/512',
    audioUrl: demoAudioUrl,
  );

  static const ListeningSession softFocus = ListeningSession(
    id: 'soft-focus',
    title: 'Soft Focus',
    subtitle: 'Focus · 30 min',
    durationSeconds: 30 * 60,
    requiresSubscription: false,
    libraryCategoryKey: 'focus',
    toneKey: 'sand',
    coverImageUrl: 'https://picsum.photos/seed/sayko-focus/512/512',
    audioUrl: demoAudioUrl,
  );

  static const ListeningSession repairingAfterConflict = ListeningSession(
    id: 'repairing-after-conflict',
    title: 'Repairing After Conflict',
    subtitle: 'Relations · 38 min',
    durationSeconds: 38 * 60,
    requiresSubscription: true,
    libraryCategoryKey: 'relations',
    toneKey: 'rose',
    coverImageUrl: 'https://picsum.photos/seed/sayko-repair/512/512',
    audioUrl: demoAudioUrl,
  );

  static const ListeningSession returningToTheBody = ListeningSession(
    id: 'returning-to-the-body',
    title: 'Returning to the Body',
    subtitle: 'Body · 24 min',
    durationSeconds: 24 * 60,
    requiresSubscription: true,
    libraryCategoryKey: 'body',
    toneKey: 'sage',
    coverImageUrl: 'https://picsum.photos/seed/sayko-body/512/512',
    audioUrl: demoAudioUrl,
  );

  static const ListeningSession theLongExhale = ListeningSession(
    id: 'the-long-exhale',
    title: 'The Long Exhale',
    subtitle: 'Stress · 35 min',
    durationSeconds: 35 * 60,
    requiresSubscription: true,
    libraryCategoryKey: 'stress',
    toneKey: 'dusk',
    coverImageUrl: 'https://picsum.photos/seed/sayko-exhale/512/512',
    audioUrl: demoAudioUrl,
  );

  static const ListeningSession sleepWithoutEffort = ListeningSession(
    id: 'sleep-without-effort',
    title: 'Sleep Without Effort',
    subtitle: 'Sleep · 40 min',
    durationSeconds: 40 * 60,
    requiresSubscription: true,
    libraryCategoryKey: 'sleep',
    toneKey: 'dusk',
    coverImageUrl: 'https://picsum.photos/seed/sayko-sleep2/512/512',
    audioUrl: demoAudioUrl,
  );
}
