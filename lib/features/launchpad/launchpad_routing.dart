part of 'launchpad.dart';

const _pathIndexMap = {'/today': 0, '/library': 1, '/settings': 2};

extension on BuildContext {
  Future<void> pushLaunchpadTab(int index) async {
    await wouter.actions.push<void>(
      _pathIndexMap.entries.firstWhere((e) => e.value == index).key,
    );
  }
}

int _useIndex() {
  final context = useContext();
  final snapshot = useStream(context.wouter.stream);
  final path = switch (snapshot.data?.path) {
    final String path => Uri.parse(path).path,
    null => null,
  };
  final index = _pathIndexMap[path] ?? 0;
  return index;
}
