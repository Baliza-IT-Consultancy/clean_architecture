import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/utils/convertors/route_information_to_uri.dart';
import '../presentation/pages/auth_selection_page.dart';
import '../presentation/pages/login_page.dart';
import '../presentation/pages/signup_page.dart';

/// Location of the Auth Module
///
/// This location covers login and sign up page routes
class AuthLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(
      BuildContext context, RouteInformationSerializable state) {
    final path = routeInfoToUri(state).path;
    return [
      const BeamPage(
        key: ValueKey("Auth Selection Page"),
        title: "Login or Signup",
        name: "Login or Signup Page",
        child: AuthSelectionPage(),
      ),
      if (path == '/auth/login')
        const BeamPage(
          key: ValueKey('Login Page'),
          title: "Login",
          name: "Login Page",
          child: LoginPage(),
        ),
      if (path == '/auth/signup')
        const BeamPage(
          key: ValueKey('Signup Page'),
          title: "Signup",
          name: "Signup Page",
          child: SignupPage(),
        )
    ];
  }

  @override
  List<Pattern> get pathPatterns => [
        '/auth',
        '/auth/login',
        '/auth/signup',
      ];
}
