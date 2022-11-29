import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'src/app/injection/injection.dart';
import 'src/external/local_db.dart';

/// Custom instance of [BlocObserver] which logs
/// any state changes and errors.
class AppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log(
      'onError -- (${bloc.runtimeType}, $error)',
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onCreate(BlocBase bloc) {
    log('onCreate -- (${bloc.runtimeType})');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    log('onClose -- (${bloc.runtimeType})');
    super.onClose(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange -- (${bloc.runtimeType}, $change)');
  }
}

/// Bootstrap is responsible for any common setup and calls
/// [runApp] with the widget returned by [builder] in an error zone.
Future<void> bootstrap(
    FutureOr<Widget> Function() builder, String environment) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    log(error.toString(), error: error, stackTrace: stack);
    return true;
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
