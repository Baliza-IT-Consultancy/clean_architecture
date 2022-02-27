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
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('onTransition(${bloc.runtimeType}, $transition)');
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

  await LocalDatabase.getInstance().init();
  configureDependencies(environment: environment);

  await BlocOverrides.runZoned(
    () async => await runZonedGuarded(
      () async => runApp(await builder()),
      (error, stackTrace) => log(
        error.toString(),
        error: error,
        stackTrace: stackTrace,
      ),
    ),
    blocObserver: AppBlocObserver(),
  );
}
