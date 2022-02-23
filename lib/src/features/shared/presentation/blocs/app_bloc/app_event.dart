part of 'app_bloc.dart';

@freezed

/// Events for the [AppBloc]
class AppEvent with _$AppEvent {
  /// Event to start the app
  const factory AppEvent.started() = AppStartedEvent;
}
