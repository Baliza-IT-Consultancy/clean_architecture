import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// A class that handles the storage of the [Hive] database.
@singleton
class LocalDatabase {
  LocalDatabase._();

  late Box _authBox;
  late Box _todoBox;

  /// initialize LocalDatabase
  Future<void> init() async {
    await Hive.initFlutter();
    _authBox = await Hive.openBox('auth');
    _todoBox = await Hive.openBox('todo');
  }

  static final LocalDatabase _instance = LocalDatabase._();

  /// Returns the instance of the [LocalDatabase].
  @factoryMethod
  static LocalDatabase getInstance() {
    return _instance;
  }

  /// get authBox
  Box get authBox => _authBox;

  /// get todoBox
  Box get todoBox => _todoBox;

  /// close the database
  @disposeMethod
  Future<void> dispose() async {
    await Hive.close();
  }
}
