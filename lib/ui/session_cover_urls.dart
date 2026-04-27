/// Remote cover art for session tiles until packaged assets exist.
/// Seeds are fixed so images stay stable per session.
abstract final class SaykoSessionCoverUrls {
  static String? byTitle(String title) => _urls[title];

  static const Map<String, String> _urls = {
    'A Quiet Place to Land': 'https://picsum.photos/seed/sayko-quiet/512/512',
    'Releasing the Day': 'https://picsum.photos/seed/sayko-release/512/512',
    'The Inner Friend': 'https://picsum.photos/seed/sayko-inner/512/512',
    'Soft Focus': 'https://picsum.photos/seed/sayko-focus/512/512',
    'Repairing After Conflict':
        'https://picsum.photos/seed/sayko-repair/512/512',
    'Returning to the Body': 'https://picsum.photos/seed/sayko-body/512/512',
    'The Long Exhale': 'https://picsum.photos/seed/sayko-exhale/512/512',
    'Sleep Without Effort': 'https://picsum.photos/seed/sayko-sleep2/512/512',
  };
}
