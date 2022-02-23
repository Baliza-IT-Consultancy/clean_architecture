import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../features/home/presentation/pages/splash_page.dart';
import '../routes.dart';

/// Home Route of the app
///
/// This route will the first to mount in the app.
class HomeLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(
      BuildContext context, RouteInformationSerializable state) {
    final path = state.uri.path;
    return [
      if (path != Routes.home)
        BeamPage(
          key: const ValueKey("Splash Page"),
          name: 'Splash',
          title: 'Splash Page',
          child: SplashPage(nextRoute: Routes.home),
        ),
      if (path == Routes.home)
        const BeamPage(
          key: ValueKey("Home Page"),
          name: 'Home',
          title: 'Home Page',
          child: HomePage(),
        ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => [Routes.splash, Routes.home];
}
