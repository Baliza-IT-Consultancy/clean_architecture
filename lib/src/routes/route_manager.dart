import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

import '../features/shared/presentation/pages/not_found_page.dart';
import 'locations/auth_location.dart';
import 'locations/home_location.dart';

/// A Wrapper class that wraps [BeamLocation] and
/// helps in creating [RouterDelegate]
abstract class RouteManager {
  /// [RouterDelegate] for this manager
  static BeamerDelegate delegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(beamLocations: locations),
    notFoundPage: const BeamPage(
      child: NotFoundPage(),
    ),
  );

  // =================================-----=================================

  /// All the registered locations in the app.
  static final locations = <BeamLocation>[
    HomeLocation(),
    AuthLocation(),
  ];
}
