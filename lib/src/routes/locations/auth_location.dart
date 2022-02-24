import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

import '../../features/shared/auth/presentation/pages/auth_selection_page.dart';
import '../../features/shared/auth/presentation/pages/login_page.dart';
import '../routes.dart';

/// Location of the Auth Module
///
/// This location covers login and sign up page routes
class AuthLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(
      BuildContext context, RouteInformationSerializable state) {
    final path = state.uri.path;
    return [
      const BeamPage(
        key: ValueKey("Auth Selection Page"),
        title: "Login or Signup",
        name: "Login or Signup Page",
        child: AuthSelectionPage(),
      ),
      if (path == Routes.login)
        const BeamPage(
          key: ValueKey('Login Page'),
          title: "Login",
          name: "Login Page",
          child: LoginPage(),
        ),
      if (path == Routes.signup)
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
