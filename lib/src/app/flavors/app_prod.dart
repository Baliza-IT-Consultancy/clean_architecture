import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../routes/route_manager.dart';

/// {@template app_dev}
/// Production version of the app
/// {@endtemplate}
class ProdApp extends StatefulWidget {
  /// {@macro app_dev}
  const ProdApp({Key? key}) : super(key: key);

  @override
  State<ProdApp> createState() => _ProdAppState();
}

class _ProdAppState extends State<ProdApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: BeamerParser(),
      routerDelegate: RouteManager.delegate,
      // key: AppConfig.appKey,
    );
  }
}
