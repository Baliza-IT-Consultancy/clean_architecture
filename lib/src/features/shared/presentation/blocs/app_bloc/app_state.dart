part of 'app_bloc.dart';

@freezed

/// Active App State
class AppState with _$AppState {
  /// App is in initial state
  const factory AppState.initial() = AppInitial;

  /// App is loading
  const factory AppState.loading() = AppLoading;

  /// App is loaded
  const factory AppState.loaded() = AppLoaded;
}
