import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

/// {@template app_bloc}
/// A Bloc that handles the active app state.
/// {@endtemplate}
@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  /// {@macro app_bloc}
  AppBloc() : super(const AppInitial()) {
    on<AppStartedEvent>((event, emit) async {
      emit(const AppState.loading());

      /// mimicking app loading
      await Future.delayed(const Duration(seconds: 2));

      emit(const AppState.loaded());
    });
  }
}
