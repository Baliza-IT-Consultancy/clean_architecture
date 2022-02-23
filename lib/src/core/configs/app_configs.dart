import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// App global configuration
abstract class AppConfig {
  AppConfig._();

  /// A global key to get top most context
  ///
  /// used in [navigator] and [localization] shortcuts
  static final GlobalKey appKey = GlobalKey();
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
