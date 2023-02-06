import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

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
