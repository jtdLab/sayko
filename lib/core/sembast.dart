import 'package:meta/meta.dart';
import 'package:path/path.dart' as p show join;
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sayko/platform.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sqflite/sembast_sqflite.dart'
    show getDatabaseFactorySqflite;
import 'package:sembast_web/sembast_web.dart' show databaseFactoryWeb;
import 'package:sqflite/sqflite.dart' as sqflite show databaseFactory;

export 'package:sembast/sembast.dart';

Future<Database> createSembast() async {
  if (Platform.current == Platform.web) {
    return databaseFactoryWeb.openDatabase(
      'sayko',
      version: _version,
      onVersionChanged: _migrate,
    );
  } else {
    final dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    final dbPath = p.join(dir.path, 'sayko.db');
    final factory = getDatabaseFactorySqflite(sqflite.databaseFactory);
    return factory.openDatabase(
      dbPath,
      version: _version,
      onVersionChanged: _migrate,
    );
  }
}

const _version = 1;

Future<void> _migrate(Database db, int oldVersion, int newVersion) async {}

typedef FromJson<T> = T Function(Map<String, dynamic> json);
typedef ToJson<T> = Map<String, dynamic> Function(T object);

abstract class Store<T> {
  Store(
    this.name, {
    required this.db,
    required this.fromJson,
    required this.toJson,
  }) {
    _stores[name] = this;
  }

  static final Map<String, Store> _stores = {};

  static Future<void> clear({
    Set<String>? include,
    Set<String>? exclude,
  }) async {
    final stores = _stores.entries
        .where(
          (e) =>
              (include == null || include.contains(e.key)) &&
              (exclude == null || !exclude.contains(e.key)),
        )
        .map((e) => e.value);
    for (final store in stores) {
      await store._store.delete(store.db);
    }
  }

  final String name;
  final Database db;
  final FromJson<T> fromJson;
  final ToJson<T> toJson;

  StoreRef<String, Map<String, Object?>> get _store =>
      stringMapStoreFactory.store(name);
}

class ObjectStore<T> extends Store<T> {
  ObjectStore(
    super.name, {
    required super.db,
    required super.fromJson,
    required super.toJson,
  });

  @visibleForTesting
  static const defaultId = '__default__';

  Future<void> delete() async {
    final record = _store.record(defaultId);
    await record.delete(db);
  }

  Future<T> put(T element) async {
    final record = _store.record(defaultId);
    await record.put(db, toJson(element));
    return element;
  }

  T? read() {
    final record = _store.record(defaultId);
    final json = record.getSync(db) as Map<String, dynamic>?;
    if (json == null) return null;
    return fromJson(json);
  }

  Stream<T> watch() {
    return _store
        .record(defaultId)
        .onSnapshot(db)
        .mapNotNull((e) => e?.value as Map<String, dynamic>?)
        .map(fromJson);
  }
}

class CollectionStore<T> extends Store<T> {
  CollectionStore(
    super.name, {
    required super.db,
    required super.fromJson,
    required super.toJson,
  });

  int count() => _store.countSync(db);

  Future<void> delete(String id) async {
    final record = _store.record(id);
    await record.delete(db);
  }

  Future<void> deleteAll([List<String>? ids]) async {
    if (ids == null) {
      await _store.delete(db);
    } else {
      await _store.records(ids).delete(db);
    }
  }

  Future<void> deleteWhere(Finder finder) async {
    await _store.query(finder: finder).delete(db);
  }

  Future<T> put(T element) async {
    final json = toJson(element);
    final record = _store.record(json['id'] as String);
    await record.put(db, json);
    return element;
  }

  Future<List<T>> putAll(List<T> elements) async {
    await db.transaction((txn) async {
      for (final element in elements) {
        final json = toJson(element);
        final record = _store.record(json['id'] as String);
        await record.put(txn, json);
      }
    });
    return elements;
  }

  T? read(String id) {
    final record = _store.record(id);
    final json = record.getSync(db) as Map<String, dynamic>?;
    if (json == null) return null;
    return fromJson(json);
  }

  List<T> readAll([List<String>? ids]) {
    if (ids != null) {
      final records = _store.records(ids).getSync(db);
      return records.nonNulls.map(fromJson).toList();
    }

    final recordSnapshot = _store.findSync(db);
    return recordSnapshot.map((snapshot) => fromJson(snapshot.value)).toList();
  }

  List<T> readWhere(Finder finder) {
    final query = _store.query(finder: finder);
    return query.getSnapshotsSync(db).map((e) => fromJson(e.value)).toList();
  }

  Stream<T> watch(String id) {
    return _store
        .record(id)
        .onSnapshot(db)
        .mapNotNull((e) => e?.value as Map<String, dynamic>?)
        .map(fromJson);
  }

  Stream<List<T>> watchAll([List<String>? ids]) {
    return switch (ids) {
      final List<String> ids => _store.records(ids).onSnapshots(db),
      null => _store.query().onSnapshots(db),
    }.mapNotNull(
      (e) => e
          .map((e) => e?.value as Map<String, dynamic>?)
          .nonNulls
          .map(fromJson)
          .toList(),
    );
  }

  Stream<int> watchCount() => _store.query().onCount(db);

  Stream<List<T>> watchWhere(Finder finder) {
    final query = _store.query(finder: finder);
    return query
        .onSnapshots(db)
        .mapNotNull(
          (e) => e
              .map((e) => e.value as Map<String, dynamic>?)
              .nonNulls
              .map(fromJson)
              .toList(),
        );
  }
}
