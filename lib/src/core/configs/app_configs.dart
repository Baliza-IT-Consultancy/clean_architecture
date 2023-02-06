import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Available Flavors
class AppFlavor {
  AppFlavor._();

  /// Production flavor
  static const production = "prod";

  /// Development flavor
  static const development = "dev";
}

/// App global configuration
abstract class AppConfig {
  AppConfig._();

  /// current flavor of the app
  static const String flavor =
      String.fromEnvironment('flavor', defaultValue: AppFlavor.development);

  /// A global key to get top most context
  ///
  /// used in [navigator] and [localization] shortcuts
  static final GlobalKey appKey = GlobalKey();

  /// A flag to enable/disable exception logging
  static bool logExceptions = true;
}

/// [BeamerDelegate] of the currently active app
///
/// Use this navigator to navigate in the app.
BeamerDelegate get navigator => Beamer.of(AppConfig.appKey.currentContext!);

/// [AppLocalizations] of the currently active app
///
/// Use this to get the active translations in the app.
AppLocalizations get localization =>
    AppLocalizations.of(AppConfig.appKey.currentContext!);

/// [ScaffoldMessenger] of the currently active app
///
/// Use this to show [SnackBar] or [MaterialBanner] in the app.
ScaffoldMessengerState get messenger =>
    ScaffoldMessenger.of(AppConfig.appKey.currentContext!);

/// To get the currently active [ThemeData]
ThemeData get theme => Theme.of(AppConfig.appKey.currentContext!);

/// To get the currently active [TextTheme] from [ThemeData]
TextTheme get textTheme => theme.textTheme;
