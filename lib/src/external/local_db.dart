import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// A class that handles the storage of the [Hive] database.
@singleton
class LocalDatabase {
  LocalDatabase._();

  late Box _authBox;
  late Box _defaultBox;

  /// initialize LocalDatabase
  Future<void> init() async {
    await Hive.initFlutter();
    _defaultBox = await Hive.openBox('default');
    _authBox = await Hive.openBox('auth');
  }

  static final LocalDatabase _instance = LocalDatabase._();

  /// Returns the instance of the [LocalDatabase].
  @factoryMethod
  static LocalDatabase getInstance() {
    return _instance;
  }

  /// get authBox
  Box get defaultBox => _defaultBox;

  /// get default box
  Box get authBox => _authBox;

  /// close the database
  @disposeMethod
  Future<void> dispose() async {
    await Hive.close();
  }
}
