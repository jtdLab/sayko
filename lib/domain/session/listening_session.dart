import 'package:meta/meta.dart';

/// A listenable hypnosis / audio session (catalog item).
@immutable
class ListeningSession {
  const ListeningSession({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.durationSeconds,
    required this.requiresSubscription,
    required this.libraryCategoryKey,
    required this.toneKey,
    required this.coverImageUrl,
    required this.audioUrl,
  });

  final String id;
  final String title;
  final String subtitle;
  final int durationSeconds;
  final bool requiresSubscription;
  final String libraryCategoryKey;
  final String toneKey;
  final String coverImageUrl;
  final String audioUrl;
}
