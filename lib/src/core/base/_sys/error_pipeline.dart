import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';

/// {@template flutter_error_pipeline}
/// A utility wrapper for handling all the system errors.
/// {@endtemplate}
class FlutterErrorPipeline {
  /// {@macro flutter_error_pipeline}
  FlutterErrorPipeline._() {
    FlutterError.onError = (details) {
      for (var callbacks in onErrorCallbacks) {
        callbacks(details);
      }
    };
    PlatformDispatcher.instance.onError = (error, stack) {
      for (var callback in onPlatformErrorCallbacks) {
        callback(error, stack);
      }
      return true;
    };
  }

  static FlutterErrorPipeline? _instance;

  /// get an instance of this Pipeline
  static FlutterErrorPipeline get instance {
    _instance ??= FlutterErrorPipeline._();
    return _instance!;
  }

  /// add listeners for `FlutterError.onError`
  final onErrorCallbacks = <void Function(FlutterErrorDetails)>[];

  /// add listeners for `PlatformDispatcher.instance.onError`
  final onPlatformErrorCallbacks = <void Function(Object, StackTrace)>[];

  /// add listeners for errors triggers by the active zone.
  final onZoneErrorCallbacks = <void Function(Object, StackTrace)>[];

  /// enable logging for errors
  void enableBasicLogging() {
    onErrorCallbacks.add(
      (details) => log(details.exceptionAsString(), stackTrace: details.stack),
    );
    onPlatformErrorCallbacks.add(
      (error, stackTrace) => log(
        error.toString(),
        error: error,
        stackTrace: stackTrace,
      ),
    );
    onZoneErrorCallbacks.add(
      (error, stackTrace) => log(
        error.toString(),
        error: error,
        stackTrace: stackTrace,
      ),
    );
  }

  /// Runs [body] in its own error zone combined with
  /// the flutter error pipeline.
  R? runInZone<R>(
    R Function() body, {
    Map<Object?, Object?>? zoneValues,
    ZoneSpecification? zoneSpecification,
  }) {
    final defaultSpec = ZoneSpecification(print: (self, parent, zone, line) {
      parent.print(zone, "YOOOOO: $line");
    });
    return runZonedGuarded<R>(
      body,
      _onZoneError,
      zoneValues: zoneValues,
      zoneSpecification: zoneSpecification ?? defaultSpec,
    );
  }

  void _onZoneError(error, stackTrace) {
    for (var callback in onZoneErrorCallbacks) {
      callback(
        error,
        stackTrace,
      );
    }
  }
}
