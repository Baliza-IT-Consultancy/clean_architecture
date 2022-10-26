import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'src/app/injection/injection.dart';
import 'src/external/local_db.dart';

/// Custom instance of [BlocObserver] which logs
/// any state changes and errors.
class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

/// Bootstrap is responsible for any common setup and calls
/// [runApp] with the widget returned by [builder] in an error zone.
Future<void> bootstrap(
    FutureOr<Widget> Function() builder, String environment) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = AppBlocObserver();

  await LocalDatabase.getInstance().init();
  configureDependencies(environment: environment);

  runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => log(
      error.toString(),
      error: error,
      stackTrace: stackTrace,
    ),
  );
}
