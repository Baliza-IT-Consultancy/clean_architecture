import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'src/app/injection/injection.dart';
import 'src/core/base/_sys/app_bloc_observer.dart';
import 'src/core/base/_sys/error_pipeline.dart';
import 'src/external/local_db.dart';

/// Bootstrap is responsible for any common setup and calls
/// [runApp] with the widget returned by [builder] in an error zone.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  final pipeline = FlutterErrorPipeline.instance;
  Bloc.observer = const AppBlocObserver();

  await LocalDatabase.getInstance().init();
  configureDependencies();
  pipeline.enableBasicLogging();
  pipeline.runInZone(() async => runApp(await builder()));
}
