// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:convert' show json;
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:universal_io/io.dart';

part 'notification_state.dart';

/// local notifications plugin
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

const appNotificationChannelId = "app-notification-channel-id";
const appNotificationChannelName = "app-notification-channel";

/// {@template notification_cubit}
/// A [Cubit] that manages the Notifications in the app.
/// {@endtemplate}
@injectable
class NotificationCubit extends Cubit<NotificationState> {
  /// {@macro notification_cubit}
  NotificationCubit(this._messaging) : super(NotificationInitial());

  final FirebaseMessaging _messaging;

  StreamSubscription? _foregroundSubscription,
      _onMessageOpenSubscription,
      _tokenSubscription;

  /// request permission to receive notifications
  Future<void> requestPermission() async {
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: true,
      sound: true,
    );

    if (settings.authorizationStatus != AuthorizationStatus.authorized ||
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      log("Notification Permission: Not Granted");
      emit(NotificationPermissionNotGranted());
    } else {
      log("Notification Permission: Granted");
      emit(NotificationPermissionGranted());
    }
  }

  /// setup foreground messages
  void setupForegroundMessages() {
    _foregroundSubscription?.cancel();
    _foregroundSubscription = FirebaseMessaging.onMessage.listen((message) {
      log('Got a message whilst in the foreground!');
      log('Message data: ${message.data}');

      if (message.notification != null) {
        log('Message also contained a notification: ${message.notification}');
      }

      emit(ReceivedMessage(message));
    });
  }

  Future<void> _setupForegroundNotifications() async {
    if (Platform.isIOS) {
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: false, // Required to display a heads up notification
        badge: true,
        sound: false,
      );
    } else if (Platform.isAndroid) {
      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        appNotificationChannelId,
        appNotificationChannelName,
        importance: Importance.max,
      );

      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
    }
  }

  void _setupInteractedMessage() async {
    final localNotification =
        await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    // FirebaseMessaging.onBackgroundMessage((message) async {
    //   await Firebase.initializeApp();
    // });

    if (localNotification?.notificationResponse != null) {
      emit(
        ReceivedPayloadMessage(
          localNotification!.notificationResponse!,
          atLaunch: localNotification.didNotificationLaunchApp,
        ),
      );
    }

    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      emit(ReceivedMessage(initialMessage, atLaunch: true));
    }
    _onMessageOpenSubscription?.cancel();
    _onMessageOpenSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen((message) {
      emit(ReceivedMessage(message, atLaunch: true));
    });
  }

  Future<void> _setupTokenSubscription() async {
    _tokenSubscription?.cancel();
    _tokenSubscription = _messaging.onTokenRefresh.listen((event) {
      emit(ReceivedToken(event));
    });
    try {
      final currentToken = await _messaging.getToken();
      if (currentToken != null) {
        emit(ReceivedToken(currentToken));
      }
    } on FirebaseException catch (e) {
      // logger.e(e);
    }
  }

  /// initialize the notification service
  Future<void> initialize() async {
    await requestPermission();
    await _setupTokenSubscription();
    await flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('app_icon'),
        iOS: DarwinInitializationSettings(),
      ),
      onDidReceiveNotificationResponse: (payload) {
        emit(ReceivedPayloadMessage(payload));
      },
    );
    setupForegroundMessages();
    _setupInteractedMessage();
    _setupForegroundNotifications();
  }

  /// terminate the notification service
  /// by removing associated resources
  Future<void> terminate() async {
    await _messaging.deleteToken();
  }

  @override
  Future<void> close() {
    _foregroundSubscription?.cancel();
    _onMessageOpenSubscription?.cancel();
    return super.close();
  }
}
