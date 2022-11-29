import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/configs/app_configs.dart';
import '../../core/constants/constraints/constraints.dart';
import '../../core/error/failure_codes.dart';
import '../../features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../routes/route_manager.dart';
import '../../routes/routes.dart';
import '../injection/injection.dart';

/// {@template app_dev}
/// Development version of the app
/// {@endtemplate}
class DevApp extends StatelessWidget {
  /// {@macro app_dev}
  const DevApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl()..add(const AuthEvent.started()),
        ),
      ],
      child: BeamerProvider(
        routerDelegate: RouteManager.delegate,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            appBarTheme: const AppBarTheme(elevation: 0),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: Colors.green,
            ),
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    AppConstraints.inputFieldOutlineBorderRadius,
                  ),
                ),
              ),
            ),
          ),
          themeMode: ThemeMode.light,
          darkTheme: ThemeData.dark().copyWith(
            appBarTheme: const AppBarTheme(elevation: 0),
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    AppConstraints.inputFieldOutlineBorderRadius,
                  ),
                ),
              ),
            ),
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routeInformationParser: BeamerParser(),
          routerDelegate: RouteManager.delegate,
          backButtonDispatcher: BeamerBackButtonDispatcher(
            delegate: RouteManager.delegate,
          ),
          builder: (context, child) => GestureDetector(
            onTap: FocusManager.instance.primaryFocus?.unfocus,
            child: BlocListener<AuthBloc, AuthState>(
              key: AppConfig.appKey,
              listener: (context, state) {
                /// Top level listener for auth state
                state.whenOrNull(
                  preUnauthenticated: (message, code) {
                    navigator.popToNamed(Routes.splash);

                    final authBloc = context.read<AuthBloc>();

                    // clean up all the active services or
                    // process for auth user.

                    // finally logout the user
                    authBloc.add(const AuthEvent.finishLogout());
                  },
                  unauthenticated: (message, code) {
                    if (code == FailureCodes.UNAUTHENTICATED) {
                      navigator.popToNamed(Routes.auth);
                    }
                    if (code == FailureCodes.LOGGED_OUT) {
                      // we can navigate to some other route on logout here.
                      navigator.popToNamed(Routes.auth);
                    }
                  },
                  preAuthenticated: (user) {
                    navigator.popToNamed(Routes.splash);

                    final authBloc = context.read<AuthBloc>();

                    // initialize all the services for the auth user
                    /// finally login the user
                    authBloc.add(AuthEvent.loginSuccess(user));
                  },
                  authenticated: (_) {
                    navigator.popToNamed(Routes.home);
                  },
                  error: (message, code) {
                    // we can show error dialog or navigate to some page here
                  },
                );
              },
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
