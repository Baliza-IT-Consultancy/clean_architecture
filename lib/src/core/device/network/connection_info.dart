import 'package:connectivity_plus/connectivity_plus.dart';

import 'network_info.dart';

/// An abstract class which is used to check for the active connection status
/// of the app or the current connection type i.e, wifi, mobile, etc.
///
/// See : [ConnectionInformationImpl] an implementation of this class.
abstract class ConnectionInformation {
  /// Checks the connection status of the device.
  ///
  /// Note: you can use this along with [NetworkInformation.isConnected]
  /// to check for internet connection.
  Future<bool> get isConnected;

  /// Checks the connection status type of the device.
  Future<ConnectivityResult> get currentConnection;

  /// Fires whenever the connectivity state type changes.
  Stream<ConnectivityResult> get onConnectionChange;

  /// Fires whenever the connectivity state changes.
  Stream<bool> get onConnectedChange;
}

/// A concrete implementation of [ConnectionInformation]
class ConnectionInformationImpl implements ConnectionInformation {
  @override
  Future<bool> get isConnected async =>
      await currentConnection != ConnectivityResult.none;

  @override
  Future<ConnectivityResult> get currentConnection =>
      Connectivity().checkConnectivity();

  @override
  Stream<ConnectivityResult> get onConnectionChange =>
      Connectivity().onConnectivityChanged;

  @override
  Stream<bool> get onConnectedChange =>
      onConnectionChange.map((event) => event != ConnectivityResult.none);
}
