import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

import '../routes.dart';

/// Location of the Auth Module
///
/// This location covers login and sign up page routes
class AuthLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(
      BuildContext context, RouteInformationSerializable state) {
    final location = state.routeInformation.location ?? '';

    return [
      if (location.contains(Routes.auth) || location.contains(Routes.login))
        const BeamPage(
          key: ValueKey('Login Page'),
          title: "Login",
          name: "Login Page",
          child: Text("Login Page"),
        ),
      if (location.contains(Routes.signup))
        const BeamPage(
          key: ValueKey('Signup Page'),
          title: "Signup",
          name: "Signup Page",
          child: Text("Signup Page"),
        )
    ];
  }

  @override
  List<Pattern> get pathPatterns => [
        Routes.auth,
        Routes.login,
        Routes.signup,
      ];
}
