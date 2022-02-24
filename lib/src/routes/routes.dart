import 'package:beamer/beamer.dart';

/// Adds [Uri] property
extension URIParser on RouteInformationSerializable {
  /// Get the [Uri] of the associated location
  Uri get uri => Uri.parse(routeInformation.location ?? '');
}

// ==========================-x-===========================

/// App routes mapping
abstract class Routes {
  Routes._();

  /// Splash route `/`
  static String get splash => '/';

  /// Home route `/home`
  static String get home => '/home';

  /// Auth route `/auth`
  static String get auth => '/auth';

  /// Login route `/auth/login`
  static String get login => '/auth/login';

  /// Sign up route `/auth/signup`
  static String get signup => '/auth/signup';
}
