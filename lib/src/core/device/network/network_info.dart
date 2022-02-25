import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:simple_connection_checker/simple_connection_checker.dart';

/// This is used to check if the app is currently
/// connected to an active internet connection.
abstract class INetworkInfo {
  /// A boolean getter to check if there is an active internet connection.
  Future<bool> get isConnected;

  /// This method checks whether the device is connected to the internet.
  ///
  /// If the device is not connected to the internet,
  /// it throws [SocketException].
  Future<void> checkConnection();
}

/// An implementation of [INetworkInfo] using [SimpleConnectionChecker]
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
@LazySingleton(as: INetworkInfo)
class SimpleNetworkInformationImpl implements INetworkInfo {
  @override
  Future<bool> get isConnected =>
      SimpleConnectionChecker.isConnectedToInternet();

  @override
  Future<void> checkConnection() async {
    final hasConnection = await isConnected;

    if (!hasConnection) {
      throw const SocketException('No internet connection');
    }
  }
}
