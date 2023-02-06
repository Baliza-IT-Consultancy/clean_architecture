part of 'notification_cubit.dart';

/// states of the [NotificationCubit]
@immutable
abstract class NotificationState {}

/// When the notification cubit hasn't initiated
class NotificationInitial extends NotificationState {}

/// When the notification permission isn't granted
class NotificationPermissionNotGranted extends NotificationState {}

/// When the notification permission is granted and ready for use
class NotificationPermissionGranted extends NotificationState {}

/// {@template received_message}
/// When a new message is received
/// {@endtemplate}
class ReceivedMessage extends NotificationPermissionGranted {
  /// {@macro received_message}
  ReceivedMessage(
    this.message, {
    this.atLaunch = false,
  });

  /// if this message opened the app
  final bool atLaunch;

  /// The received notification.
  final RemoteMessage message;

  @override
  String toString() =>
      'ReceivedMessage(atLaunch: $atLaunch, message: $message)';
}

/// {@template received_payload_message}
/// When a local notification is received
/// {@endtemplate}
class ReceivedPayloadMessage extends NotificationPermissionGranted {
  /// {@macro received_payload_message}
  ReceivedPayloadMessage(
    this.message, {
    this.atLaunch = false,
  });

  /// if this message opened the app
  final bool atLaunch;

  /// The locally received notification.
  final NotificationResponse message;

  /// convert the message string to a Map
  Map<String, dynamic> get payload =>
      message.payload != null ? json.decode(message.payload!) : {};

  @override
  String toString() =>
      'ReceivedPayloadMessage(atLaunch: $atLaunch, message: $message)';
}

/// {@template received_token}
/// When an fcm token is received
/// {@endtemplate}
class ReceivedToken extends NotificationPermissionGranted {
  /// {@macro received_token}
  ReceivedToken(this.token);

  /// fcm token
  final String token;
}
