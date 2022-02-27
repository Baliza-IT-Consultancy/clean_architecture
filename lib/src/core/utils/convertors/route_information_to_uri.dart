import 'package:beamer/beamer.dart';

/// converts a [RouteInformationSerializable] to an [Uri]
Uri routeInfoToUri(RouteInformationSerializable state) {
  return Uri.parse(state.routeInformation.location!);
}
