import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

import '../features/shared/errors/presentation/pages/not_found_page.dart';
import 'locations/auth_location.dart';
import 'locations/home_location.dart';

/// A Route Observer that logs the route changes.
///
/// This is used to debug the routing.
class CustomNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    log('PUSH: from: ${previousRoute?.settings.name}, '
        'to: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    log('POP: from: ${previousRoute?.settings.name}, '
        'to: ${route.settings.name}');
  }
}

/// A Wrapper class that wraps [BeamLocation] and
/// helps in creating [RouterDelegate]
abstract class RouteManager {
  /// [RouterDelegate] for this manager
  static BeamerDelegate delegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(beamLocations: locations),
    notFoundPage: const BeamPage(
      child: NotFoundPage(),
    ),
    navigatorObservers: [
      CustomNavigatorObserver(),
    ],
    routeListener: (info, _) {
      log("Next Route : ${info.location}");
    },
  );

  // =================================-----=================================

  /// All the registered locations in the app.
  static final locations = <BeamLocation>[
    HomeLocation(),
    AuthLocation(),
  ];
}
