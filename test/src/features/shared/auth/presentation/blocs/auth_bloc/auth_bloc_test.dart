import 'package:clean_architecture/src/app/injection/injection.dart';
import 'package:clean_architecture/src/features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("AuthBloc", () {
    late AuthBloc authBloc;

    setUp(() {
      configureDependencies();
      authBloc = sl();
    });

    test("Initial state is AuthState.initial", () {
      expect(authBloc.state, const AuthState.initial());
    });
  });
}
