import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/notification_cubit/notification_cubit.dart';

/// {@template notification_manager}
/// A [Widget] that manages the Notifications in the app.
/// {@endtemplate}
class NotificationManager extends StatelessWidget {
  /// {@macro notification_manager}
  const NotificationManager({
    Key? key,
    required this.child,
  }) : super(key: key);

  /// child to be displayed
  final Widget child;

  void _actOnMessage(BuildContext context, RemoteMessage message,
      {bool launch = false}) {
        // TODO: add logic to handle the message.
  }

  void _updateFCMToken(BuildContext context, String token) {
    // TODO: add logic to update the auth user's fcm token.
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationCubit, NotificationState>(
      listener: (context, state) {
        if (state is ReceivedMessage) {
          _actOnMessage(
            context,
            state.message,
            launch: state.atLaunch,
          );
        }
        if (state is ReceivedToken) {
          _updateFCMToken(context, state.token);
        }
      },
      child: child,
    );
  }
}
