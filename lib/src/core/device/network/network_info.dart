import 'package:simple_connection_checker/simple_connection_checker.dart';

/// An abstract class that is used to check if the app is currently
/// connected to an active internet connection.
abstract class NetworkInformation {
  /// A boolean getter to check if there is an active internet connection.
  Future<bool> get isConnected;
}

/// An implementation of [NetworkInformation] using [SimpleConnectionChecker]
///
/// ```dart
/// final connectionChecker = SimpleNetworkInformationImpl();
///
/// Future<void> main() async {
///   final hasConnection = await connectionChecker.isConnected;
///
///   if (hasConnection) {
///     print('connected to the internet');
///   } else {
///     print('no connection available');
///   }
/// }
///
/// ```
class SimpleNetworkInformationImpl implements NetworkInformation {
  @override
  Future<bool> get isConnected =>
      SimpleConnectionChecker.isConnectedToInternet();
}
