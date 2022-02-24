import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/configs/app_configs.dart';
import '../../core/constants/constraints/constraints.dart';
import '../../features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../routes/route_manager.dart';
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
          theme: ThemeData(
            appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color(0xFF13B9FF),
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
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routeInformationParser: BeamerParser(),
          routerDelegate: RouteManager.delegate,
          backButtonDispatcher: BeamerBackButtonDispatcher(
            delegate: RouteManager.delegate,
          ),
          builder: (context, child) => SizedBox(
            key: AppConfig.appKey,
            child: child,
          ),
        ),
      ),
    );
  }
}
